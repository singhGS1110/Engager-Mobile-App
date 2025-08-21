using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.Common.Constants;
using EngagerMobile.Mariteam.Services.WorkOrders;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace EngagerMobile.Mariteam.ViewModels
{
    public class PendingSignViewModel : BaseViewModel
    {
        PendingSignEntityService psEntityService;

        //public int _chkLstHeight;

        //public int ChkLstHeight
        //{
        //    get
        //    {
        //        return _chkLstHeight;
        //    }
        //    set
        //    {
        //        if(_chkLstHeight != value)
        //        {
        //            _chkLstHeight = value;
        //            OnPropertyChanged();
        //        }

        //        //Set(() => ChkLstHeight, ref _chkLstHeight, value);
        //    }
        //}

        public Button btnSignature { get; set; }
        public Button btnSnapshot { get; set; }
        public Button btnComplete { get; set; }

        public WorkOrder WorkOrder { get; set; }

        public List<PendingSignEntity> PendingSignEntities { get; set; }

        public ObservableCollection<CheckListHelperEntity> Checklists { get; set; }
        //{
        //    get
        //    {
        //        return checklists;
        //    }
        //    set
        //    {
        //        if(checklists != value)
        //        {
        //            checklists = value;
        //            ChkLstHeight = checklists.Count * 20;
        //            OnPropertyChanged();
        //        }
        //    }
        //}

        public ObservableCollection<PendingSignEntity> MeetingServices { get; set; }
        
        public ObservableCollection<PendingSignEntity> CustomDetentions { get; set; }

        public ObservableCollection<PendingSignEntity> Ranks { get; set; }

        public string PickupPax { get; set; } = String.Empty;

        public Command LoadReferencesCommand { get; set; }

        public string ServiceJobStatus { get; set; }

        public PendingSignViewModel()
        {        }

        public PendingSignViewModel(WorkOrder workOrder)
        {
            psEntityService = new PendingSignEntityService();

            ServiceJobStatus = workOrder.ServiceJobStatusStr;

            this.WorkOrder = workOrder;

            Checklists = new ObservableCollection<CheckListHelperEntity>();
            MeetingServices = new ObservableCollection<PendingSignEntity>();
            CustomDetentions = new ObservableCollection<PendingSignEntity>();
            Ranks = new ObservableCollection<PendingSignEntity>();

            LoadReferencesCommand = new Command(async () => await ExecuteLoadReferencesCommand());

        }

        public async Task ExecuteLoadReferencesCommand()
        {
            btnComplete.IsEnabled = false;
            btnSignature.IsEnabled = false;
            btnSnapshot.IsEnabled = false;

            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                Checklists.Clear();
                MeetingServices.Clear();
                CustomDetentions.Clear();
                Ranks.Clear();

                var pendingSignEntities = await psEntityService.Get(null);

                var checklistModels = pendingSignEntities.Where(x => x.ShortText10 == PendingSignEntityTypeConstants.ModelTypes.Checklist.ToString()).ToList();

                var meetingServiceModels = pendingSignEntities.Where(x => x.ShortText10 == PendingSignEntityTypeConstants.ModelTypes.MeetingService.ToString()).ToList();

                var customDetentionModels = pendingSignEntities.Where(x => x.ShortText10 == PendingSignEntityTypeConstants.ModelTypes.CustomDetention.ToString()).ToList();

                var rankModels = pendingSignEntities.Where(x => x.ShortText10 == PendingSignEntityTypeConstants.ModelTypes.Rank.ToString()).ToList();

                if (!(checklistModels.Count == 0))
                {
                    foreach (var checklist in checklistModels)
                    {
                        Checklists.Add(new CheckListHelperEntity()
                        {
                            Id = checklist.Id,
                            Code = checklist.Code,
                            Name = checklist.Name,
                            ShortText9 = checklist.ShortText9,
                            ShortText10 = checklist.ShortText10,
                            Selected = checklist.Selected
                        });
                    }
                }

                //ChkLstHeight = ChkLstHeight = checklists.Count * 20;

                if (!(meetingServiceModels.Count == 0))
                {
                    foreach (var meetingService in meetingServiceModels)
                    {
                        MeetingServices.Add(meetingService);
                    }
                }

                if (!(customDetentionModels.Count == 0))
                {
                    foreach (var customDetention in customDetentionModels)
                    {
                        CustomDetentions.Add(customDetention);
                    }
                }

                if (!(rankModels.Count == 0))
                {
                    foreach (var rank in rankModels)
                    {
                        Ranks.Add(rank);
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
            }
            finally
            {
                IsBusy = false;
                btnComplete.IsEnabled = true;
                btnSignature.IsEnabled = true;
                btnSnapshot.IsEnabled = true;
            }
        }

        //private async Task UpdateUI()
        //{
        //    try
        //    {
        //        ChkLstHeight = await ChangeListViewSize();
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}

        //public async Task<int> ChangeListViewSize()
        //{
        //    await Task.Delay(3000);
        //    return (Checklists.Count * 30);
        //}
    }

    public class CheckListHelperEntity : INotifyPropertyChanged
    {
        public Int64 Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string ShortText10 { get; set; }

        private bool selected;
        public bool Selected
        {
            get { return selected; }
            set
            {
                selected = value;
                OnPropertyChanged();
            }
        }

        public string ShortText9 { get; set; } //Amount - PCR2021

        public event PropertyChangedEventHandler PropertyChanged; 
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

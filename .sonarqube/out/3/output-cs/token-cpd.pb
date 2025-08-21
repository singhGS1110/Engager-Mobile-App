Å
iC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\WorkOrderSummaryPage.xaml.cs
	namespace

 	
EngagerMobile


 
.

 
Mariteam

  
.

  !
Views

! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions (
.( )
Compile) 0
)0 1
]1 2
public 
partial 
class  
WorkOrderSummaryPage *
:+ ,
ContentPage- 8
{ 
public  
WorkOrderSummaryPage	 
( 
)  
{ 
InitializeComponent 
( 
) 
; 
} 
} 
} ™<
cC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\WorkOrdersPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions +
.+ ,
Compile, 3
)3 4
]4 5
public 

partial 
class 
WorkOrdersPage '
:( )
ContentPage* 5
{ #
WorkOrdersPageViewModel 
	viewModel  )
;) *
WorkOrderService 
	woService "
;" #
public 
WorkOrderStatus 
woStatus '
;' (
static 
bool 
	IsPending 
; 
public 
WorkOrdersPage 
( 
string $
	pageTitle% .
,. /
List0 4
<4 5
	WorkOrder5 >
>> ?
workOrderLists@ N
,N O
boolP T
	isPendingU ^
)^ _
{ 	
InitializeComponent 
(  
)  !
;! " 
StaticWorkOrderModel  
.  !

ResetModel! +
(+ ,
), -
;- .
Title   
=   
	pageTitle   
;   
	woService!! 
=!! 
new!! 
WorkOrderService!! ,
(!!, -
)!!- .
;!!. /
	IsPending"" 
="" 
	isPending"" !
;""! "
BindingContext$$ 
=$$ 
	viewModel$$ &
=$$' (
new$$) ,#
WorkOrdersPageViewModel$$- D
($$D E
	isPending$$E N
)$$N O
;$$O P
woStatus33 
=33 
new33 
WorkOrderStatus33 *
(33* +
)33+ ,
;33, -
}44 	
	protected66 
override66 
void66 
OnAppearing66  +
(66+ ,
)66, -
{77 	
base88 
.88 
OnAppearing88 
(88 
)88 
;88 
	viewModel:: 
.:: !
LoadWorkOrdersCommand:: +
=::, -
new::. 1
Command::2 9
(::9 :
async::: ?
(::@ A
)::A B
=>::C E
await::F K
	viewModel::L U
.::U V(
ExecuteLoadWorkOrdersCommand::V r
(::r s
	IsPending::s |
)::| }
)::} ~
;::~ 
	viewModel;; 
.;; !
LoadWorkOrdersCommand;; +
.;;+ ,
Execute;;, 3
(;;3 4
	IsPending;;4 =
);;= >
;;;> ?
}CC 	
privateEE 
asyncEE 
voidEE !
RefreshIcon_OnClickedEE 0
(EE0 1
objectEE1 7
senderEE8 >
,EE> ?
	EventArgsEE@ I
eEEJ K
)EEK L
{FF 	
ifGG 
(GG 
CrossConnectivityGG !
.GG! "
CurrentGG" )
.GG) *
IsConnectedGG* 5
)GG5 6
{HH 
	viewModelII 
.II !
LoadWorkOrdersCommandII /
=II0 1
newII2 5
CommandII6 =
(II= >
asyncII> C
(IID E
)IIE F
=>IIG I
awaitIIJ O
	viewModelIIP Y
.IIY Z(
ExecuteLoadWorkOrdersCommandIIZ v
(IIv w
	IsPending	IIw Ä
)
IIÄ Å
)
IIÅ Ç
;
IIÇ É
	viewModelJJ 
.JJ !
LoadWorkOrdersCommandJJ /
.JJ/ 0
ExecuteJJ0 7
(JJ7 8
	IsPendingJJ8 A
)JJA B
;JJB C
}KK 
elseLL 
{MM 
awaitNN 
DisplayAlertNN "
(NN" #
$strNN# 5
,NN5 6
$str	NN7 ç
,
NNç é
$str
NNè ï
)
NNï ñ
;
NNñ ó
}OO 
}PP 	
asyncRR 
voidRR 
OnItemTappedRR 
(RR  
objectRR  &
senderRR' -
,RR- .
ItemTappedEventArgsRR/ B
argsRRC G
)RRG H
{SS 	
varTT 
	workOrderTT 
=TT 
argsTT  
.TT  !
ItemTT! %
asTT& (
	WorkOrderTT) 2
;TT2 3
ifVV 
(VV 
	workOrderVV 
==VV 
nullVV !
)VV! "
returnWW 
;WW  
StaticWorkOrderModelZZ  
.ZZ  !

ResetModelZZ! +
(ZZ+ ,
)ZZ, -
;ZZ- . 
StaticWorkOrderModel\\  
.\\  !
	WorkOrder\\! *
=\\+ ,
	workOrder\\- 6
;\\6 7
woStatus__ 
=__ 
await__ 
App__  
.__  !
woStatusRepo__! -
.__- .'
GetWorkOrderStatusByIdAsync__. I
(__I J
	workOrder__J S
.__S T
WorkOrderId__T _
,___ `
	workOrder__a j
.__j k
ServiceJobId__k w
)__w x
;__x y
ifaa 
(aa 
woStatusaa 
==aa 
nullaa  
)aa  !
{bb 
woStatuscc 
=cc 
newcc 
WorkOrderStatuscc .
(cc. /
)cc/ 0
{cc1 2
WorkOrderIdcc3 >
=cc? @
	workOrderccA J
.ccJ K
WorkOrderIdccK V
,ccV W
serviceJobIdccX d
=cce f
	workOrderccg p
.ccp q
ServiceJobIdccq }
,cc} ~
isSignedByCustomer	cc ë
=
ccí ì
false
ccî ô
}
ccö õ
;
ccõ ú
awaitdd 
Appdd 
.dd 
woStatusRepodd &
.dd& '#
AddWorkOrderStatusAsyncdd' >
(dd> ?
woStatusdd? G
)ddG H
;ddH I
}ee 
woStatusgg 
.gg 
WorkOrderStatusStrgg '
=gg( )
	workOrdergg* 3
.gg3 4
	StatusStrgg4 =
;gg= >
woStatushh 
.hh 
ServiceJobStatusStrhh (
=hh) *
	workOrderhh+ 4
.hh4 5
ServiceJobStatusStrhh5 H
;hhH I
awaitjj 
Appjj 
.jj 
woStatusRepojj "
.jj" #&
UpdateWorkOrderStatusAsyncjj# =
(jj= >
woStatusjj> F
)jjF G
;jjG H
ifll 
(ll 
woStatusll 
.ll 
ServiceJobStatusStrll ,
==ll- /%
ServiceJobStatusConstantsll0 I
.llI J
SeviceJobStatusllJ Y
.llY Z
Pending_SignllZ f
.llf g
ToStringllg o
(llo p
)llp q
)llq r
{mm 
awaitnn 

Navigationnn  
.nn  !
	PushAsyncnn! *
(nn* +
newnn+ .
PendingSignPagenn/ >
(nn> ?
newnn? B 
PendingSignViewModelnnC W
(nnW X
	workOrdernnX a
)nna b
,nnb c
woStatusnnd l
)nnl m
)nnm n
;nnn o
}oo 
elsepp 
{qq 
awaitrr 

Navigationrr  
.rr  !
	PushAsyncrr! *
(rr* +
newrr+ . 
WorkOrderDetailsPagerr/ C
(rrC D
newrrD G)
WorkOrderDetailsPageViewModelrrH e
(rre f
	workOrderrrf o
)rro p
,rrp q
woStatusrrr z
)rrz {
)rr{ |
;rr| }
}ss 
WorkOrdersListViewvv 
.vv 
SelectedItemvv +
=vv, -
nullvv. 2
;vv2 3
}ww 	
}xx 
}yy Òì
iC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\WorkOrderDetailsPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions +
.+ ,
Compile, 3
)3 4
]4 5
public 

partial 
class  
WorkOrderDetailsPage -
:. /
ContentPage0 ;
{ )
WorkOrderDetailsPageViewModel %
	viewModel& /
;/ 0
WorkOrderStatus 
woStatus  
;  !
WorkOrderService 
	woService "
;" #
GeoLocationService 

geoService %
;% &
string 
customerName 
; 
string 
	pickUpPax 
; 
string 
standByDate 
; 
string   
standByTime   
;   
string!! 
reason!! 
;!! 
Int64"" 
rankId"" 
;"" 
public$$  
WorkOrderDetailsPage$$ #
($$# $)
WorkOrderDetailsPageViewModel$$$ A
	viewModel$$B K
,$$K L
WorkOrderStatus$$M \
woStatus$$] e
)$$e f
{%% 	
InitializeComponent&& 
(&&  
)&&  !
;&&! "
Title(( 
=(( 
$str(( "
;((" #
	woService** 
=** 
new** 
WorkOrderService** ,
(**, -
)**- .
;**. /

geoService++ 
=++ 
new++ 
GeoLocationService++ /
(++/ 0
)++0 1
;++1 2
BindingContext-- 
=-- 
this-- !
.--! "
	viewModel--" +
=--, -
	viewModel--. 7
;--7 8
this.. 
... 
	viewModel.. 
... 

btnEndTask.. %
=..& '
this..( ,
..., -
btnEnd..- 3
;..3 4
this// 
.// 
	viewModel// 
.// 
btnSaveData// &
=//' (
this//) -
.//- .
btnSaveData//. 9
;//9 :
this00 
.00 
	viewModel00 
.00 
btnAddPassenger00 *
=00+ ,
this00- 1
.001 2
btnAddPassenger002 A
;00A B
this22 
.22 
	viewModel22 
.22 
IsBusy22 !
=22" #
false22$ )
;22) *
this44 
.44 
woStatus44 
=44 
woStatus44 $
;44$ %
if77 
(77 
woStatus77 
.77 
ServiceJobStatusStr77 ,
==77- /%
ServiceJobStatusConstants770 I
.77I J
SeviceJobStatus77J Y
.77Y Z
Pending77Z a
.77a b
ToString77b j
(77j k
)77k l
)77l m
{88 
Acknowledge_State99 !
(99! "
)99" #
;99# $
}:: 
else;; 
if;; 
(;; 
woStatus;; 
.;; 
ServiceJobStatusStr;; 1
==;;2 4%
ServiceJobStatusConstants;;5 N
.;;N O
SeviceJobStatus;;O ^
.;;^ _
	Scheduled;;_ h
.;;h i
ToString;;i q
(;;q r
);;r s
);;s t
{<< 
Scheduled_State== 
(==  
)==  !
;==! "
}>> 
else?? 
if?? 
(?? 
woStatus?? 
.?? 
ServiceJobStatusStr?? 1
==??2 4%
ServiceJobStatusConstants??5 N
.??N O
SeviceJobStatus??O ^
.??^ _
In_Progress??_ j
.??j k
ToString??k s
(??s t
)??t u
)??u v
{@@ 
InProgress_StateAA  
(AA  !
)AA! "
;AA" #
}BB 
elseCC 
ifCC 
(CC 
woStatusCC 
.CC 
ServiceJobStatusStrCC 1
==CC2 4%
ServiceJobStatusConstantsCC5 N
.CCN O
SeviceJobStatusCCO ^
.CC^ _
	SubmittedCC_ h
.CCh i
ToStringCCi q
(CCq r
)CCr s
)CCs t
{DD 
Completed_StateEE 
(EE  
)EE  !
;EE! "
}FF 
}GG 	
	protectedII 
asyncII 
overrideII  
voidII! %
OnAppearingII& 1
(II1 2
)II2 3
{JJ 	
ifKK 
(KK 
woStatusKK 
.KK 
ServiceJobStatusStrKK +
==KK, .%
ServiceJobStatusConstantsKK/ H
.KKH I
SeviceJobStatusKKI X
.KKX Y
Pending_SignKKY e
.KKe f
ToStringKKf n
(KKn o
)KKo p
)KKp q
{LL 
awaitMM 

NavigationMM  
.MM  !
PopAsyncMM! )
(MM) *
falseMM* /
)MM/ 0
;MM0 1
}NN 
ifPP 
(PP 
CrossConnectivityPP !
.PP! "
CurrentPP" )
.PP) *
IsConnectedPP* 5
)PP5 6
{QQ 
ifRR 
(RR 
woStatusRR 
.RR 
ServiceJobStatusStrRR 0
==RR1 3%
ServiceJobStatusConstantsRR4 M
.RRM N
SeviceJobStatusRRN ]
.RR] ^
PendingRR^ e
.RRe f
ToStringRRf n
(RRn o
)RRo p
)RRp q
{SS 
Acknowledge_StateTT %
(TT% &
)TT& '
;TT' (
}UU 
elseVV 
ifVV 
(VV 
woStatusVV !
.VV! "
ServiceJobStatusStrVV" 5
==VV6 8%
ServiceJobStatusConstantsVV9 R
.VVR S
SeviceJobStatusVVS b
.VVb c
	ScheduledVVc l
.VVl m
ToStringVVm u
(VVu v
)VVv w
)VVw x
{WW 
Scheduled_StateXX #
(XX# $
)XX$ %
;XX% &
}YY 
elseZZ 
ifZZ 
(ZZ 
woStatusZZ !
.ZZ! "
ServiceJobStatusStrZZ" 5
==ZZ6 8%
ServiceJobStatusConstantsZZ9 R
.ZZR S
SeviceJobStatusZZS b
.ZZb c
In_ProgressZZc n
.ZZn o
ToStringZZo w
(ZZw x
)ZZx y
)ZZy z
{[[ 
Loading_State\\ !
(\\! "
true\\" &
)\\& '
;\\' (
InProgress_State^^ $
(^^$ %
)^^% &
;^^& '
if__ 
(__ 
	viewModel__  
.__  !
Ranks__! &
.__& '
Count__' ,
==__- /
$num__0 1
||__2 4
	viewModel__5 >
.__> ?
Ranks__? D
==__E G
null__H L
)__L M
{`` 
awaitaa 
	viewModelaa '
.aa' ((
ExecuteLoadReferencesCommandaa( D
(aaD E
)aaE F
;aaF G
}bb 
ifdd 
(dd 
!dd 
(dd 
Stringdd 
.dd  
IsNullOrEmptydd  -
(dd- .
woStatusdd. 6
.dd6 7!
PassengerInChargeNamedd7 L
)ddL M
)ddM N
)ddN O
{ee $
txtEditInChargePassengerff 0
.ff0 1
Textff1 5
=ff6 7
woStatusff8 @
.ff@ A!
PassengerInChargeNameffA V
;ffV W
}gg 
ifii 
(ii 
!ii 
(ii 
Stringii 
.ii  
IsNullOrEmptyii  -
(ii- .
woStatusii. 6
.ii6 7
	PickUpPaxii7 @
)ii@ A
)iiA B
)iiB C
{jj 

txtEditPaxkk "
.kk" #
Textkk# '
=kk( )
woStatuskk* 2
.kk2 3
	PickUpPaxkk3 <
;kk< =
}ll 
ifnn 
(nn 
!nn 
(nn 
Stringnn 
.nn  
IsNullOrEmptynn  -
(nn- .
woStatusnn. 6
.nn6 7
PassengerRankNamenn7 H
)nnH I
)nnI J
)nnJ K
{oo 
pickerEditRankpp &
.pp& '
SelectedItempp' 3
=pp4 5
	viewModelpp6 ?
.pp? @
Rankspp@ E
.ppE F
ToListppF L
(ppL M
)ppM N
.ppN O
WhereppO T
(ppT U
xppU V
=>ppW Y
xppZ [
.pp[ \
Idpp\ ^
==pp_ a
woStatusppb j
.ppj k
PassengerRankIdppk z
)ppz {
.pp{ |
FirstOrDefault	pp| ä
(
ppä ã
)
ppã å
;
ppå ç
}qq 
elserr 
{ss 
pickerEditRanktt &
.tt& '
SelectedItemtt' 3
=tt4 5
	viewModeltt6 ?
.tt? @
Rankstt@ E
.ttE F
ToListttF L
(ttL M
)ttM N
.ttN O
WherettO T
(ttT U
xttU V
=>ttW Y
xttZ [
.tt[ \
Idtt\ ^
==tt_ a 
StaticWorkOrderModelttb v
.ttv w
	WorkOrder	ttw Ä
.
ttÄ Å
RankId
ttÅ á
)
ttá à
.
ttà â
FirstOrDefault
ttâ ó
(
ttó ò
)
ttò ô
;
ttô ö
}uu 
Loading_Stateww !
(ww! "
falseww" '
)ww' (
;ww( )
}yy 
elsezz 
ifzz 
(zz 
woStatuszz !
.zz! "
ServiceJobStatusStrzz" 5
==zz6 8%
ServiceJobStatusConstantszz9 R
.zzR S
SeviceJobStatuszzS b
.zzb c
	Submittedzzc l
.zzl m
ToStringzzm u
(zzu v
)zzv w
)zzw x
{{{ 
Completed_State|| #
(||# $
)||$ %
;||% &
}}} 
}~~ 
else 
{
ÄÄ 
await
ÅÅ 
DisplayAlert
ÅÅ "
(
ÅÅ" #
$str
ÅÅ# 5
,
ÅÅ5 6
$strÅÅ7 ç
,ÅÅç é
$strÅÅè ì
)ÅÅì î
;ÅÅî ï
}
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
async
ÖÖ 
void
ÖÖ &
BtnAcknowledge_OnClicked
ÖÖ 3
(
ÖÖ3 4
object
ÖÖ4 :
sender
ÖÖ; A
,
ÖÖA B
	EventArgs
ÖÖC L
e
ÖÖM N
)
ÖÖN O
{
ÜÜ 	
try
áá 
{
àà 
btnAcknowledge
ââ 
.
ââ 
	IsEnabled
ââ (
=
ââ) *
false
ââ+ 0
;
ââ0 1
if
ãã 
(
ãã 
CrossConnectivity
ãã %
.
ãã% &
Current
ãã& -
.
ãã- .
IsConnected
ãã. 9
)
ãã9 :
{
åå 
var
çç 
confirm
çç 
=
çç  !
await
çç" '
DisplayAlert
çç( 4
(
çç4 5
$str
çç5 >
,
çç> ?
$str
çç@ p
,
ççp q
$str
ççr w
,
ççw x
$str
ççy }
)
çç} ~
;
çç~ 
if
èè 
(
èè 
confirm
èè 
)
èè  
{
êê 
this
ëë 
.
ëë 
	viewModel
ëë &
.
ëë& '
IsBusy
ëë' -
=
ëë. /
true
ëë0 4
;
ëë4 5
Int64
ìì 
serviceJobId
ìì *
=
ìì+ ,
Convert
ìì- 4
.
ìì4 5
ToInt64
ìì5 <
(
ìì< =
	txtSJobId
ìì= F
.
ììF G
Text
ììG K
)
ììK L
;
ììL M
if
ïï 
(
ïï 
await
ïï !
	woService
ïï" +
.
ïï+ ,
Acknowledge
ïï, 7
(
ïï7 8
serviceJobId
ïï8 D
)
ïïD E
)
ïïE F
{
ññ 
this
óó  
.
óó  !
	viewModel
óó! *
.
óó* +
IsBusy
óó+ 1
=
óó2 3
false
óó4 9
;
óó9 :
txtSJStatus
öö '
.
öö' (
Text
öö( ,
=
öö- .'
ServiceJobStatusConstants
öö/ H
.
ööH I
SeviceJobStatus
ööI X
.
ööX Y
	Scheduled
ööY b
.
ööb c
ToString
ööc k
(
öök l
)
ööl m
;
ööm n
this
úú  
.
úú  !
woStatus
úú! )
.
úú) *!
ServiceJobStatusStr
úú* =
=
úú> ?
txtSJStatus
úú@ K
.
úúK L
Text
úúL P
;
úúP Q
await
ùù !
App
ùù" %
.
ùù% &
woStatusRepo
ùù& 2
.
ùù2 3%
AddWorkOrderStatusAsync
ùù3 J
(
ùùJ K
this
ùùK O
.
ùùO P
woStatus
ùùP X
)
ùùX Y
;
ùùY Z
Scheduled_State
üü +
(
üü+ ,
)
üü, -
;
üü- .
}
†† 
else
°° 
{
¢¢ 
this
££  
.
££  !
	viewModel
££! *
.
££* +
IsBusy
££+ 1
=
££2 3
false
££4 9
;
££9 :
await
•• !
DisplayAlert
••" .
(
••. /
$str
••/ 7
,
••7 8
$str••9 Ö
,••Ö Ü
$str••á ã
)••ã å
;••å ç
}
¶¶ 
}
ßß 
}
®® 
else
©© 
{
™™ 
await
´´ 
DisplayAlert
´´ &
(
´´& '
$str
´´' 9
,
´´9 :
$str´´; ë
,´´ë í
$str´´ì ó
)´´ó ò
;´´ò ô
}
≠≠ 
btnAcknowledge
ØØ 
.
ØØ 
	IsEnabled
ØØ (
=
ØØ) *
true
ØØ+ /
;
ØØ/ 0
}
∞∞ 
catch
±± 
(
±± 
	Exception
±± 
ex
±± 
)
±± 
{
≤≤ 
this
≥≥ 
.
≥≥ 
	viewModel
≥≥ 
.
≥≥ 
IsBusy
≥≥ %
=
≥≥& '
false
≥≥( -
;
≥≥- .
Loading_State
¥¥ 
(
¥¥ 
false
¥¥ #
)
¥¥# $
;
¥¥$ %
await
µµ 
DisplayAlert
µµ "
(
µµ" #
$str
µµ# *
,
µµ* +
$str
µµ, a
+
µµb c
ex
µµd f
.
µµf g
Message
µµg n
,
µµn o
$str
µµp v
)
µµv w
;
µµw x
return
∂∂ 
;
∂∂ 
}
∑∑ 
}
∏∏ 	
private
∫∫ 
async
∫∫ 
void
∫∫  
BtnBegin_OnClicked
∫∫ -
(
∫∫- .
object
∫∫. 4
sender
∫∫5 ;
,
∫∫; <
	EventArgs
∫∫= F
e
∫∫G H
)
∫∫H I
{
ªª 	
try
ºº 
{
ΩΩ 
btnBegin
ææ 
.
ææ 
	IsEnabled
ææ "
=
ææ# $
false
ææ% *
;
ææ* +
if
øø 
(
øø 
CrossConnectivity
øø %
.
øø% &
Current
øø& -
.
øø- .
IsConnected
øø. 9
)
øø9 :
{
¿¿ 
var
¡¡ 
confirm
¡¡ 
=
¡¡  !
await
¡¡" '
DisplayAlert
¡¡( 4
(
¡¡4 5
$str
¡¡5 >
,
¡¡> ?
$str
¡¡@ d
,
¡¡d e
$str
¡¡f k
,
¡¡k l
$str
¡¡m q
)
¡¡q r
;
¡¡r s
if
√√ 
(
√√ 
confirm
√√ 
)
√√  
{
ƒƒ 
this
≈≈ 
.
≈≈ 
	viewModel
≈≈ &
.
≈≈& '
IsBusy
≈≈' -
=
≈≈. /
true
≈≈0 4
;
≈≈4 5
Int64
«« 
serviceJobId
«« *
=
««+ ,
Convert
««- 4
.
««4 5
ToInt64
««5 <
(
««< =
	txtSJobId
««= F
.
««F G
Text
««G K
)
««K L
;
««L M
Position
ÀÀ  
currentPosition
ÀÀ! 0
=
ÀÀ1 2
new
ÀÀ3 6
Position
ÀÀ7 ?
(
ÀÀ? @
)
ÀÀ@ A
{
ÃÃ 
	Timestamp
ÕÕ %
=
ÕÕ& '
DateTime
ÕÕ( 0
.
ÕÕ0 1
Today
ÕÕ1 6
}
ŒŒ 
;
ŒŒ 
if
–– 
(
–– 
await
–– !
	woService
––" +
.
––+ ,
	BeginTask
––, 5
(
––5 6
serviceJobId
––6 B
,
––B C
currentPosition
––D S
)
––S T
)
––T U
{
—— 
this
““  
.
““  !
	viewModel
““! *
.
““* +
IsBusy
““+ 1
=
““2 3
false
““4 9
;
““9 :
woStatus
÷÷ $
=
÷÷% &
await
÷÷' ,
App
÷÷- 0
.
÷÷0 1
woStatusRepo
÷÷1 =
.
÷÷= >)
GetWorkOrderStatusByIdAsync
÷÷> Y
(
÷÷Y Z
this
÷÷Z ^
.
÷÷^ _
	viewModel
÷÷_ h
.
÷÷h i
	WorkOrder
÷÷i r
.
÷÷r s
WorkOrderId
÷÷s ~
,
÷÷~ 
this÷÷Ä Ñ
.÷÷Ñ Ö
	viewModel÷÷Ö é
.÷÷é è
	WorkOrder÷÷è ò
.÷÷ò ô
ServiceJobId÷÷ô •
)÷÷• ¶
;÷÷¶ ß
woStatus
◊◊ $
.
◊◊$ %!
ServiceJobStatusStr
◊◊% 8
=
◊◊9 :
txtSJStatus
◊◊; F
.
◊◊F G
Text
◊◊G K
=
◊◊L M'
ServiceJobStatusConstants
◊◊N g
.
◊◊g h
SeviceJobStatus
◊◊h w
.
◊◊w x
In_Progress◊◊x É
.◊◊É Ñ
ToString◊◊Ñ å
(◊◊å ç
)◊◊ç é
;◊◊é è
await
ÿÿ !
App
ÿÿ" %
.
ÿÿ% &
woStatusRepo
ÿÿ& 2
.
ÿÿ2 3(
UpdateWorkOrderStatusAsync
ÿÿ3 M
(
ÿÿM N
woStatus
ÿÿN V
)
ÿÿV W
;
ÿÿW X
InProgress_State
⁄⁄ ,
(
⁄⁄, -
)
⁄⁄- .
;
⁄⁄. /
await
‹‹ !
	viewModel
‹‹" +
.
‹‹+ ,*
ExecuteLoadReferencesCommand
‹‹, H
(
‹‹H I
)
‹‹I J
;
‹‹J K
pickerEditRank
ﬁﬁ *
.
ﬁﬁ* +
SelectedItem
ﬁﬁ+ 7
=
ﬁﬁ8 9
	viewModel
ﬁﬁ: C
.
ﬁﬁC D
Ranks
ﬁﬁD I
.
ﬁﬁI J
ToList
ﬁﬁJ P
(
ﬁﬁP Q
)
ﬁﬁQ R
.
ﬁﬁR S
Where
ﬁﬁS X
(
ﬁﬁX Y
x
ﬁﬁY Z
=>
ﬁﬁ[ ]
x
ﬁﬁ^ _
.
ﬁﬁ_ `
Id
ﬁﬁ` b
==
ﬁﬁc e"
StaticWorkOrderModel
ﬁﬁf z
.
ﬁﬁz {
	WorkOrderﬁﬁ{ Ñ
.ﬁﬁÑ Ö
RankIdﬁﬁÖ ã
)ﬁﬁã å
.ﬁﬁå ç
FirstOrDefaultﬁﬁç õ
(ﬁﬁõ ú
)ﬁﬁú ù
;ﬁﬁù û
}
ﬂﬂ 
else
‡‡ 
{
·· 
this
‚‚  
.
‚‚  !
	viewModel
‚‚! *
.
‚‚* +
IsBusy
‚‚+ 1
=
‚‚2 3
false
‚‚4 9
;
‚‚9 :
await
‰‰ !
DisplayAlert
‰‰" .
(
‰‰. /
$str
‰‰/ 7
,
‰‰7 8
$str
‰‰9 x
,
‰‰x y
$str
‰‰z ~
)
‰‰~ 
;‰‰ Ä
}
ÂÂ 
}
ÁÁ 
btnBegin
ÈÈ 
.
ÈÈ 
	IsEnabled
ÈÈ &
=
ÈÈ' (
true
ÈÈ) -
;
ÈÈ- .
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
await
ÌÌ 
DisplayAlert
ÌÌ &
(
ÌÌ& '
$str
ÌÌ' 9
,
ÌÌ9 :
$strÌÌ; ë
,ÌÌë í
$strÌÌì ó
)ÌÌó ò
;ÌÌò ô
}
ÓÓ 
btnBegin
 
.
 
	IsEnabled
 "
=
# $
true
% )
;
) *
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ 
	Exception
ÚÚ 
ex
ÚÚ 
)
ÚÚ  
{
ÛÛ 
this
ÙÙ 
.
ÙÙ 
	viewModel
ÙÙ 
.
ÙÙ 
IsBusy
ÙÙ %
=
ÙÙ& '
false
ÙÙ( -
;
ÙÙ- .
Loading_State
ıı 
(
ıı 
false
ıı #
)
ıı# $
;
ıı$ %
await
ˆˆ 
DisplayAlert
ˆˆ "
(
ˆˆ" #
$str
ˆˆ# *
,
ˆˆ* +
$str
ˆˆ, a
+
ˆˆb c
ex
ˆˆd f
.
ˆˆf g
Message
ˆˆg n
,
ˆˆn o
$str
ˆˆp v
)
ˆˆv w
;
ˆˆw x
return
˜˜ 
;
˜˜ 
}
¯¯ 
}
˘˘ 	
private
˚˚ 
async
˚˚ 
void
˚˚ !
btnSaveData_Clicked
˚˚ .
(
˚˚. /
object
˚˚/ 5
sender
˚˚6 <
,
˚˚< =
	EventArgs
˚˚> G
e
˚˚H I
)
˚˚I J
{
¸¸ 	
try
˝˝ 
{
˛˛ 
Loading_State
ˇˇ 
(
ˇˇ 
true
ˇˇ "
)
ˇˇ" #
;
ˇˇ# $
this
ÄÄ 
.
ÄÄ 
	viewModel
ÄÄ 
.
ÄÄ 
IsBusy
ÄÄ %
=
ÄÄ& '
true
ÄÄ( ,
;
ÄÄ, -
string
ÇÇ 
passengerName
ÇÇ $
=
ÇÇ% &&
txtEditInChargePassenger
ÇÇ' ?
.
ÇÇ? @
Text
ÇÇ@ D
;
ÇÇD E
string
ÑÑ 
pax
ÑÑ 
=
ÑÑ 

txtEditPax
ÑÑ '
.
ÑÑ' (
Text
ÑÑ( ,
;
ÑÑ, -
var
ÜÜ 
rank
ÜÜ 
=
ÜÜ 
pickerEditRank
ÜÜ )
.
ÜÜ) *
SelectedItem
ÜÜ* 6
as
ÜÜ7 9

RankEntity
ÜÜ: D
;
ÜÜD E
woStatus
àà 
=
àà 
await
àà  
App
àà! $
.
àà$ %
woStatusRepo
àà% 1
.
àà1 2)
GetWorkOrderStatusByIdAsync
àà2 M
(
ààM N
this
ààN R
.
ààR S
	viewModel
ààS \
.
àà\ ]
	WorkOrder
àà] f
.
ààf g
WorkOrderId
ààg r
,
ààr s
this
ààt x
.
ààx y
	viewModelàày Ç
.ààÇ É
	WorkOrderààÉ å
.ààå ç
ServiceJobIdààç ô
)ààô ö
;ààö õ
if
ää 
(
ää 
woStatus
ää 
!=
ää 
null
ää  $
)
ää$ %
{
ãã 
woStatus
åå 
.
åå #
PassengerInChargeName
åå 2
=
åå3 4
passengerName
åå5 B
;
ååB C
woStatus
çç 
.
çç 
	PickUpPax
çç &
=
çç' (
pax
çç) ,
;
çç, -
woStatus
éé 
.
éé 
PassengerRankId
éé ,
=
éé- .
rank
éé/ 3
==
éé4 6
null
éé7 ;
?
éé< =
$num
éé> ?
:
éé@ A
rank
ééB F
.
ééF G
Id
ééG I
;
ééI J
woStatus
èè 
.
èè 
PassengerRankName
èè .
=
èè/ 0
rank
èè1 5
==
èè6 8
null
èè9 =
?
èè> ?
null
èè@ D
:
èèE F
rank
èèG K
.
èèK L
Name
èèL P
;
èèP Q
}
êê 
await
íí 
App
íí 
.
íí 
woStatusRepo
íí &
.
íí& '(
UpdateWorkOrderStatusAsync
íí' A
(
ííA B
woStatus
ííB J
)
ííJ K
;
ííK L
this
îî 
.
îî 
	viewModel
îî 
.
îî 
IsBusy
îî %
=
îî& '
false
îî( -
;
îî- .
Loading_State
ïï 
(
ïï 
false
ïï #
)
ïï# $
;
ïï$ %
await
óó 
DisplayAlert
óó "
(
óó" #
$str
óó# *
,
óó* +
$str
óó, I
,
óóI J
$str
óóK O
)
óóO P
;
óóP Q
btnSaveData
ôô 
.
ôô 
	IsEnabled
ôô %
=
ôô& '
true
ôô( ,
;
ôô, -
return
õõ 
;
õõ 
}
úú 
catch
ùù 
(
ùù 
	Exception
ùù 
ex
ùù 
)
ùù  
{
ûû 
this
üü 
.
üü 
	viewModel
üü 
.
üü 
IsBusy
üü %
=
üü& '
false
üü( -
;
üü- .
Loading_State
†† 
(
†† 
false
†† #
)
††# $
;
††$ %
await
°° 
DisplayAlert
°° "
(
°°" #
$str
°°# *
,
°°* +
$str
°°, a
+
°°b c
ex
°°d f
.
°°f g
Message
°°g n
,
°°n o
$str
°°p v
)
°°v w
;
°°w x
return
¢¢ 
;
¢¢ 
}
££ 
}
§§ 	
private
ßß 
async
ßß 
void
ßß 
BtnEnd_OnClicked
ßß +
(
ßß+ ,
object
ßß, 2
sender
ßß3 9
,
ßß9 :
	EventArgs
ßß; D
e
ßßE F
)
ßßF G
{
®® 	
try
©© 
{
™™ 
Loading_State
´´ 
(
´´ 
true
´´ "
)
´´" #
;
´´# $
if
≠≠ 
(
≠≠ 
CrossConnectivity
≠≠ %
.
≠≠% &
Current
≠≠& -
.
≠≠- .
IsConnected
≠≠. 9
)
≠≠9 :
{
ÆÆ 
var
∞∞ 
confirm
∞∞ 
=
∞∞  !
await
∞∞" '
DisplayAlert
∞∞( 4
(
∞∞4 5
$str
∞∞5 >
,
∞∞> ?
$str
∞∞@ b
,
∞∞b c
$str
∞∞d i
,
∞∞i j
$str
∞∞k o
)
∞∞o p
;
∞∞p q
if
≤≤ 
(
≤≤ 
confirm
≤≤ 
)
≤≤  
{
≥≥ 
this
¥¥ 
.
¥¥ 
	viewModel
¥¥ &
.
¥¥& '
IsBusy
¥¥' -
=
¥¥. /
true
¥¥0 4
;
¥¥4 5
customerName
∂∂ $
=
∂∂% &&
txtEditInChargePassenger
∂∂' ?
.
∂∂? @
Text
∂∂@ D
;
∂∂D E
if
∏∏ 
(
∏∏ 
String
∏∏ "
.
∏∏" #
IsNullOrEmpty
∏∏# 0
(
∏∏0 1
customerName
∏∏1 =
)
∏∏= >
)
∏∏> ?
{
ππ 
this
∫∫  
.
∫∫  !
	viewModel
∫∫! *
.
∫∫* +
IsBusy
∫∫+ 1
=
∫∫2 3
false
∫∫4 9
;
∫∫9 :
await
ºº !
DisplayAlert
ºº" .
(
ºº. /
$str
ºº/ 9
,
ºº9 :
$str
ºº; n
,
ººn o
$str
ººp t
)
ººt u
;
ººu v
Loading_State
ææ )
(
ææ) *
false
ææ* /
)
ææ/ 0
;
ææ0 1
return
¿¿ "
;
¿¿" #
}
¡¡ 
	pickUpPax
√√ !
=
√√" #

txtEditPax
√√$ .
.
√√. /
Text
√√/ 3
;
√√3 4
if
≈≈ 
(
≈≈ 
!
≈≈ 
(
≈≈ 
Int64
≈≈ #
.
≈≈# $
TryParse
≈≈$ ,
(
≈≈, -
	pickUpPax
≈≈- 6
,
≈≈6 7
out
≈≈8 ;
Int64
≈≈< A
pax
≈≈B E
)
≈≈E F
)
≈≈F G
)
≈≈G H
{
∆∆ 
this
««  
.
««  !
	viewModel
««! *
.
««* +
IsBusy
««+ 1
=
««2 3
false
««4 9
;
««9 :
await
…… !
DisplayAlert
……" .
(
……. /
$str
……/ <
,
……< =
$str
……> s
,
……s t
$str
……u y
)
……y z
;
……z {
Loading_State
ÀÀ )
(
ÀÀ) *
false
ÀÀ* /
)
ÀÀ/ 0
;
ÀÀ0 1
return
ÕÕ "
;
ÕÕ" #
}
ŒŒ 
if
–– 
(
–– 
	pickUpPax
–– %
==
––& (
$str
––) +
||
––, .
	pickUpPax
––/ 8
==
––9 ;
null
––< @
)
––@ A
{
—— 
this
““  
.
““  !
	viewModel
““! *
.
““* +
IsBusy
““+ 1
=
““2 3
false
““4 9
;
““9 :
await
‘‘ !
DisplayAlert
‘‘" .
(
‘‘. /
$str
‘‘/ 9
,
‘‘9 :
$str
‘‘; u
,
‘‘u v
$str
‘‘w {
)
‘‘{ |
;
‘‘| }
Loading_State
÷÷ )
(
÷÷) *
false
÷÷* /
)
÷÷/ 0
;
÷÷0 1
return
ÿÿ "
;
ÿÿ" #
}
ŸŸ 
var
€€ 
rank
€€  
=
€€! "
pickerEditRank
€€# 1
.
€€1 2
SelectedItem
€€2 >
as
€€? A

RankEntity
€€B L
;
€€L M
if
›› 
(
›› 
rank
››  
==
››! #
null
››$ (
)
››( )
{
ﬁﬁ 
this
ﬂﬂ  
.
ﬂﬂ  !
	viewModel
ﬂﬂ! *
.
ﬂﬂ* +
IsBusy
ﬂﬂ+ 1
=
ﬂﬂ2 3
false
ﬂﬂ4 9
;
ﬂﬂ9 :
await
‡‡ !
DisplayAlert
‡‡" .
(
‡‡. /
$str
‡‡/ 9
,
‡‡9 :
$str‡‡; •
,‡‡• ¶
$str‡‡ß ´
)‡‡´ ¨
;‡‡¨ ≠
Loading_State
·· )
(
··) *
false
··* /
)
··/ 0
;
··0 1
return
„„ "
;
„„" #
}
‰‰ 
var
ÍÍ 
_rankId
ÍÍ #
=
ÍÍ$ %
rank
ÍÍ& *
.
ÍÍ* +
Id
ÍÍ+ -
;
ÍÍ- .
this
ÏÏ 
.
ÏÏ 
rankId
ÏÏ #
=
ÏÏ$ %
_rankId
ÏÏ& -
;
ÏÏ- .
Int64
ÓÓ 
serviceJobId
ÓÓ *
=
ÓÓ+ ,
Convert
ÓÓ- 4
.
ÓÓ4 5
ToInt64
ÓÓ5 <
(
ÓÓ< =
	txtSJobId
ÓÓ= F
.
ÓÓF G
Text
ÓÓG K
)
ÓÓK L
;
ÓÓL M
Position
ÚÚ  
currentPosition
ÚÚ! 0
=
ÚÚ1 2
new
ÚÚ3 6
Position
ÚÚ7 ?
(
ÚÚ? @
)
ÚÚ@ A
{
ÛÛ 
	Timestamp
ÙÙ %
=
ÙÙ& '
DateTime
ÙÙ( 0
.
ÙÙ0 1
Today
ÙÙ1 6
}
ıı 
;
ıı 
if
˜˜ 
(
˜˜ 
lblAdminStandBy
˜˜ +
.
˜˜+ ,
Text
˜˜, 0
==
˜˜1 3
$str
˜˜4 9
)
˜˜9 :
{
¯¯ 
if
˘˘ 
(
˘˘  
	viewModel
˘˘  )
.
˘˘) *
ModifyStandByDate
˘˘* ;
)
˘˘; <
{
˙˙ 
standByDate
˚˚  +
=
˚˚, -
dpStandByDate
˚˚. ;
.
˚˚; <
Date
˚˚< @
.
˚˚@ A
ToShortDateString
˚˚A R
(
˚˚R S
)
˚˚S T
;
˚˚T U
standByTime
˝˝  +
=
˝˝, -
tpStandByTime
˝˝. ;
.
˝˝; <
Time
˝˝< @
.
˝˝@ A
ToString
˝˝A I
(
˝˝I J
)
˝˝J K
;
˝˝K L
}
áá 
else
àà  
if
àà! #
(
àà$ %
	viewModel
àà% .
.
àà. /
ModifyReason
àà/ ;
)
àà; <
{
ââ 
reason
ää  &
=
ää' (
pickerReason
ää) 5
.
ää5 6
SelectedItem
ää6 B
==
ääC E
null
ääF J
?
ääK L
string
ääM S
.
ääS T
Empty
ääT Y
:
ääZ [
pickerReason
ää\ h
.
ääh i
SelectedItem
ääi u
.
ääu v
ToString
ääv ~
(
ää~ 
)ää Ä
;ääÄ Å
if
åå  "
(
åå# $
reason
åå$ *
==
åå+ -
string
åå. 4
.
åå4 5
Empty
åå5 :
)
åå: ;
{
çç  !
this
éé$ (
.
éé( )
	viewModel
éé) 2
.
éé2 3
IsBusy
éé3 9
=
éé: ;
false
éé< A
;
ééA B
await
êê$ )
DisplayAlert
êê* 6
(
êê6 7
$str
êê7 A
,
êêA B
$strêêC ¶
,êê¶ ß
$strêê® ¨
)êê¨ ≠
;êê≠ Æ
Loading_State
íí$ 1
(
íí1 2
false
íí2 7
)
íí7 8
;
íí8 9
return
îî$ *
;
îî* +
}
ïï  !
}
ññ 
else
óó  
{
òò 
this
ôô  $
.
ôô$ %
	viewModel
ôô% .
.
ôô. /
IsBusy
ôô/ 5
=
ôô6 7
false
ôô8 =
;
ôô= >
await
õõ  %
DisplayAlert
õõ& 2
(
õõ2 3
$str
õõ3 =
,
õõ= >
$str
õõ? z
,
õõz {
$strõõ| Ä
)õõÄ Å
;õõÅ Ç
Loading_State
ùù  -
(
ùù- .
false
ùù. 3
)
ùù3 4
;
ùù4 5
return
üü  &
;
üü& '
}
†† 
}
°° 
else
¢¢ 
{
££ 
standByDate
§§ '
=
§§( )
$str
§§* ,
;
§§, -
standByTime
•• '
=
••( )
$str
••* ,
;
••, -
reason
¶¶ "
=
¶¶# $
$str
¶¶% '
;
¶¶' (
}
ßß 
if
©© 
(
©© 
await
©© !
	woService
©©" +
.
©©+ ,
EndTask
©©, 3
(
©©3 4
serviceJobId
©©4 @
,
©©@ A
currentPosition
©©B Q
,
©©Q R
rankId
©©S Y
,
©©Y Z
customerName
©©[ g
,
©©g h
	pickUpPax
©©i r
,
©©r s
standByDate
©©t 
,©© Ä
standByTime©©Å å
,©©å ç
reason©©é î
)©©î ï
)©©ï ñ
{
™™ 
this
´´  
.
´´  !
	viewModel
´´! *
.
´´* +
IsBusy
´´+ 1
=
´´2 3
false
´´4 9
;
´´9 :
woStatus
ØØ $
=
ØØ% &
await
ØØ' ,
App
ØØ- 0
.
ØØ0 1
woStatusRepo
ØØ1 =
.
ØØ= >)
GetWorkOrderStatusByIdAsync
ØØ> Y
(
ØØY Z
this
ØØZ ^
.
ØØ^ _
	viewModel
ØØ_ h
.
ØØh i
	WorkOrder
ØØi r
.
ØØr s
WorkOrderId
ØØs ~
,
ØØ~ 
thisØØÄ Ñ
.ØØÑ Ö
	viewModelØØÖ é
.ØØé è
	WorkOrderØØè ò
.ØØò ô
ServiceJobIdØØô •
)ØØ• ¶
;ØØ¶ ß
woStatus
∞∞ $
.
∞∞$ %!
ServiceJobStatusStr
∞∞% 8
=
∞∞9 :'
ServiceJobStatusConstants
∞∞; T
.
∞∞T U
SeviceJobStatus
∞∞U d
.
∞∞d e
Pending_Sign
∞∞e q
.
∞∞q r
ToString
∞∞r z
(
∞∞z {
)
∞∞{ |
;
∞∞| }
await
≤≤ !
App
≤≤" %
.
≤≤% &
woStatusRepo
≤≤& 2
.
≤≤2 3(
UpdateWorkOrderStatusAsync
≤≤3 M
(
≤≤M N
woStatus
≤≤N V
)
≤≤V W
;
≤≤W X"
StaticWorkOrderModel
¥¥ 0
.
¥¥0 1
	WorkOrder
¥¥1 :
.
¥¥: ;
RankId
¥¥; A
=
¥¥B C
rankId
¥¥D J
;
¥¥J K"
StaticWorkOrderModel
µµ 0
.
µµ0 1
	WorkOrder
µµ1 :
.
µµ: ;
RankStr
µµ; B
=
µµC D
rank
µµE I
.
µµI J
Name
µµJ N
;
µµN O"
StaticWorkOrderModel
∂∂ 0
.
∂∂0 1
	WorkOrder
∂∂1 :
.
∂∂: ;
InChargePassenger
∂∂; L
=
∂∂M N
customerName
∂∂O [
;
∂∂[ \"
StaticWorkOrderModel
∑∑ 0
.
∑∑0 1
	WorkOrder
∑∑1 :
.
∑∑: ;
NoOfPax
∑∑; B
=
∑∑C D
Convert
∑∑E L
.
∑∑L M
ToInt32
∑∑M T
(
∑∑T U
	pickUpPax
∑∑U ^
)
∑∑^ _
;
∑∑_ `"
StaticWorkOrderModel
∏∏ 0
.
∏∏0 1
	WorkOrder
∏∏1 :
.
∏∏: ;
StandByDateStr
∏∏; I
=
∏∏J K
standByDate
∏∏L W
;
∏∏W X"
StaticWorkOrderModel
ππ 0
.
ππ0 1
	WorkOrder
ππ1 :
.
ππ: ;
StandByTime
ππ; F
=
ππG H
standByTime
ππI T
;
ππT U
await
ºº !

Navigation
ºº" ,
.
ºº, -
	PushAsync
ºº- 6
(
ºº6 7
new
ºº7 :
PendingSignPage
ºº; J
(
ººJ K
new
ººK N"
PendingSignViewModel
ººO c
(
ººc d"
StaticWorkOrderModel
ººd x
.
ººx y
	WorkOrderººy Ç
)ººÇ É
,ººÉ Ñ
woStatusººÖ ç
)ººç é
)ººé è
;ººè ê
}
ΩΩ 
else
ææ 
{
øø 
this
¿¿  
.
¿¿  !
	viewModel
¿¿! *
.
¿¿* +
IsBusy
¿¿+ 1
=
¿¿2 3
false
¿¿4 9
;
¿¿9 :
await
¬¬ !
DisplayAlert
¬¬" .
(
¬¬. /
$str
¬¬/ 7
,
¬¬7 8
$str¬¬9 Å
,¬¬Å Ç
$str¬¬É á
)¬¬á à
;¬¬à â
Loading_State
ƒƒ )
(
ƒƒ) *
false
ƒƒ* /
)
ƒƒ/ 0
;
ƒƒ0 1
}
≈≈ 
}
«« 
Loading_State
…… !
(
……! "
false
……" '
)
……' (
;
……( )
}
   
else
ÀÀ 
{
ÃÃ 
await
ÕÕ 
DisplayAlert
ÕÕ &
(
ÕÕ& '
$str
ÕÕ' 9
,
ÕÕ9 :
$strÕÕ; ë
,ÕÕë í
$strÕÕì ó
)ÕÕó ò
;ÕÕò ô
Loading_State
ŒŒ !
(
ŒŒ! "
false
ŒŒ" '
)
ŒŒ' (
;
ŒŒ( )
}
œœ 
}
–– 
catch
—— 
(
—— 
	Exception
—— 
ex
—— 
)
——  
{
““ 
this
”” 
.
”” 
	viewModel
”” 
.
”” 
IsBusy
”” %
=
””& '
false
””( -
;
””- .
Loading_State
‘‘ 
(
‘‘ 
false
‘‘ #
)
‘‘# $
;
‘‘$ %
await
’’ 
DisplayAlert
’’ "
(
’’" #
$str
’’# *
,
’’* +
$str
’’, a
+
’’b c
ex
’’d f
.
’’f g
Message
’’g n
,
’’n o
$str
’’p v
)
’’v w
;
’’w x
return
÷÷ 
;
÷÷ 
}
◊◊ 
}
ÿÿ 	
private
⁄⁄ 
void
⁄⁄ %
btnAddPassenger_Clicked
⁄⁄ ,
(
⁄⁄, -
object
⁄⁄- 3
sender
⁄⁄4 :
,
⁄⁄: ;
	EventArgs
⁄⁄< E
e
⁄⁄F G
)
⁄⁄G H
{
€€ 	
btnAddPassenger
‹‹ 
.
‹‹ 
	IsEnabled
‹‹ %
=
‹‹& '
false
‹‹( -
;
‹‹- .
string
ﬁﬁ 
url
ﬁﬁ 
=
ﬁﬁ 
UrlConstants
ﬁﬁ %
.
ﬁﬁ% &
ADD_PASSENGER
ﬁﬁ& 3
+
ﬁﬁ4 5
$str
ﬁﬁ6 E
+
ﬁﬁF G
txtWOId
ﬁﬁH O
.
ﬁﬁO P
Text
ﬁﬁP T
+
ﬁﬁU V
$str
ﬁﬁW g
+
ﬁﬁh i
	txtSJobId
ﬁﬁj s
.
ﬁﬁs t
Text
ﬁﬁt x
+
ﬁﬁy z
$strﬁﬁ{ á
+ﬁﬁà â
ApiConstantsﬁﬁä ñ
.ﬁﬁñ ó
KEYﬁﬁó ö
+ﬁﬁõ ú
$strﬁﬁù ∞
+ﬁﬁ± ≤
UserConfigsﬁﬁ≥ æ
.ﬁﬁæ ø 
PARENTCOMPANY_IDﬁﬁø œ
.ﬁﬁœ –
ToStringﬁﬁ– ÿ
(ﬁﬁÿ Ÿ
)ﬁﬁŸ ⁄
;ﬁﬁ⁄ €
var
‡‡ 
uri
‡‡ 
=
‡‡ 
new
‡‡ 
Uri
‡‡ 
(
‡‡ 
string
‡‡ $
.
‡‡$ %
Format
‡‡% +
(
‡‡+ ,
url
‡‡, /
,
‡‡/ 0
string
‡‡1 7
.
‡‡7 8
Empty
‡‡8 =
)
‡‡= >
)
‡‡> ?
;
‡‡? @
Device
‚‚ 
.
‚‚ 
OpenUri
‚‚ 
(
‚‚ 
uri
‚‚ 
)
‚‚ 
;
‚‚  
btnAddPassenger
‰‰ 
.
‰‰ 
	IsEnabled
‰‰ %
=
‰‰& '
true
‰‰( ,
;
‰‰, -
}
ÂÂ 	
private
ÁÁ 
async
ÁÁ 
void
ÁÁ 
BtnMap_OnClicked
ÁÁ +
(
ÁÁ+ ,
object
ÁÁ, 2
sender
ÁÁ3 9
,
ÁÁ9 :
	EventArgs
ÁÁ; D
e
ÁÁE F
)
ÁÁF G
{
ËË 	
await
ÈÈ 
DisplayAlert
ÈÈ 
(
ÈÈ 
$str
ÈÈ &
,
ÈÈ& '
$str
ÈÈ( E
,
ÈÈE F
$str
ÈÈG K
)
ÈÈK L
;
ÈÈL M
}
ÍÍ 	
private
ÏÏ 
void
ÏÏ 
Loading_State
ÏÏ "
(
ÏÏ" #
bool
ÏÏ# '
	isLoading
ÏÏ( 1
)
ÏÏ1 2
{
ÌÌ 	
if
ÓÓ 
(
ÓÓ 
	isLoading
ÓÓ 
)
ÓÓ 
{
ÔÔ 
btnSaveData
 
.
 
	IsEnabled
 %
=
& '
false
( -
;
- .
btnEnd
ÒÒ 
.
ÒÒ 
	IsEnabled
ÒÒ  
=
ÒÒ! "
false
ÒÒ# (
;
ÒÒ( )
btnAddPassenger
ÚÚ 
.
ÚÚ  
	IsEnabled
ÚÚ  )
=
ÚÚ* +
false
ÚÚ, 1
;
ÚÚ1 2
}
ÛÛ 
else
ÙÙ 
{
ıı 
btnSaveData
ˆˆ 
.
ˆˆ 
	IsEnabled
ˆˆ %
=
ˆˆ& '
true
ˆˆ( ,
;
ˆˆ, -
btnEnd
˜˜ 
.
˜˜ 
	IsEnabled
˜˜  
=
˜˜! "
true
˜˜# '
;
˜˜' (
btnAddPassenger
¯¯ 
.
¯¯  
	IsEnabled
¯¯  )
=
¯¯* +
true
¯¯, 0
;
¯¯0 1
}
˘˘ 
}
˙˙ 	
private
¸¸ 
void
¸¸ 
Acknowledge_State
¸¸ &
(
¸¸& '
)
¸¸' (
{
˝˝ 	
lytPax
˛˛ 
.
˛˛ 
	IsVisible
˛˛ 
=
˛˛ 
false
˛˛ $
;
˛˛$ %
lytDateEntry
ˇˇ 
.
ˇˇ 
	IsVisible
ˇˇ "
=
ˇˇ# $
false
ˇˇ% *
;
ˇˇ* +
lytModifyDate
ÄÄ 
.
ÄÄ 
	IsVisible
ÄÄ #
=
ÄÄ$ %
false
ÄÄ& +
;
ÄÄ+ ,
lytModifyReason
ÅÅ 
.
ÅÅ 
	IsVisible
ÅÅ %
=
ÅÅ& '
false
ÅÅ( -
;
ÅÅ- .
	lytReason
ÇÇ 
.
ÇÇ 
	IsVisible
ÇÇ 
=
ÇÇ  !
false
ÇÇ" '
;
ÇÇ' (
lblDateTime
ÑÑ 
.
ÑÑ 
	IsVisible
ÑÑ !
=
ÑÑ" #
false
ÑÑ$ )
;
ÑÑ) *
btnAcknowledge
ÜÜ 
.
ÜÜ 
	IsVisible
ÜÜ $
=
ÜÜ% &
true
ÜÜ' +
;
ÜÜ+ ,
btnBegin
áá 
.
áá 
	IsVisible
áá 
=
áá  
false
áá! &
;
áá& '
btnEnd
àà 
.
àà 
	IsVisible
àà 
=
àà 
false
àà $
;
àà$ %
}
ââ 	
private
ãã 
void
ãã 
Scheduled_State
ãã $
(
ãã$ %
)
ãã% &
{
åå 	
lytPax
çç 
.
çç 
	IsVisible
çç 
=
çç 
false
çç $
;
çç$ %
lytDateEntry
éé 
.
éé 
	IsVisible
éé "
=
éé# $
false
éé% *
;
éé* +
lytModifyDate
èè 
.
èè 
	IsVisible
èè #
=
èè$ %
false
èè& +
;
èè+ ,
lytModifyReason
êê 
.
êê 
	IsVisible
êê %
=
êê& '
false
êê( -
;
êê- .
	lytReason
ëë 
.
ëë 
	IsVisible
ëë 
=
ëë  !
false
ëë" '
;
ëë' (
lblDateTime
ìì 
.
ìì 
	IsVisible
ìì !
=
ìì" #
false
ìì$ )
;
ìì) *
btnAcknowledge
ïï 
.
ïï 
	IsVisible
ïï $
=
ïï% &
false
ïï' ,
;
ïï, -
btnBegin
ññ 
.
ññ 
	IsVisible
ññ 
=
ññ  
true
ññ! %
;
ññ% &
btnEnd
óó 
.
óó 
	IsVisible
óó 
=
óó 
false
óó $
;
óó$ %
}
òò 	
private
öö 
void
öö 
InProgress_State
öö %
(
öö% &
)
öö& '
{
õõ 	
lytPax
úú 
.
úú 
	IsVisible
úú 
=
úú 
true
úú #
;
úú# $
if
ùù 
(
ùù 
lblAdminStandBy
ùù 
.
ùù  
Text
ùù  $
==
ùù% '
$str
ùù( -
)
ùù- .
{
ûû 
lytModifyDate
¢¢ 
.
¢¢ 
	IsVisible
¢¢ '
=
¢¢( )
true
¢¢* .
;
¢¢. /
lytModifyReason
££ 
.
££  
	IsVisible
££  )
=
££* +
true
££, 0
;
££0 1
lytDateEntry
§§ 
.
§§ 
	IsVisible
§§ &
=
§§' (
false
§§) .
;
§§. /
	lytReason
•• 
.
•• 
	IsVisible
•• #
=
••$ %
false
••& +
;
••+ ,
}
¶¶ 
else
ßß 
{
®® 
lytModifyDate
©© 
.
©© 
	IsVisible
©© '
=
©©( )
false
©©* /
;
©©/ 0
lytModifyReason
™™ 
.
™™  
	IsVisible
™™  )
=
™™* +
false
™™, 1
;
™™1 2
lytDateEntry
´´ 
.
´´ 
	IsVisible
´´ &
=
´´' (
false
´´) .
;
´´. /
	lytReason
¨¨ 
.
¨¨ 
	IsVisible
¨¨ #
=
¨¨$ %
false
¨¨& +
;
¨¨+ ,
}
≠≠ 
lblDateTime
ØØ 
.
ØØ 
	IsVisible
ØØ !
=
ØØ" #
false
ØØ$ )
;
ØØ) *
btnAcknowledge
±± 
.
±± 
	IsVisible
±± $
=
±±% &
false
±±' ,
;
±±, -
btnBegin
≤≤ 
.
≤≤ 
	IsVisible
≤≤ 
=
≤≤  
false
≤≤! &
;
≤≤& '
btnEnd
≥≥ 
.
≥≥ 
	IsVisible
≥≥ 
=
≥≥ 
true
≥≥ #
;
≥≥# $
}
¥¥ 	
private
∂∂ 
void
∂∂ %
ModifyStandbyDate_State
∂∂ ,
(
∂∂, -
)
∂∂- .
{
∑∑ 	
lytPax
∏∏ 
.
∏∏ 
	IsVisible
∏∏ 
=
∏∏ 
true
∏∏ #
;
∏∏# $
lytModifyDate
ππ 
.
ππ 
	IsVisible
ππ #
=
ππ$ %
true
ππ& *
;
ππ* +
lytModifyReason
∫∫ 
.
∫∫ 
	IsVisible
∫∫ %
=
∫∫& '
true
∫∫( ,
;
∫∫, -
lytDateEntry
ªª 
.
ªª 
	IsVisible
ªª "
=
ªª# $
true
ªª% )
;
ªª) *
	lytReason
ºº 
.
ºº 
	IsVisible
ºº 
=
ºº  !
false
ºº" '
;
ºº' (
lblDateTime
¡¡ 
.
¡¡ 
	IsVisible
¡¡ !
=
¡¡" #
true
¡¡$ (
;
¡¡( )
}
¬¬ 	
private
ƒƒ 
void
ƒƒ  
ModifyReason_State
ƒƒ '
(
ƒƒ' (
)
ƒƒ( )
{
≈≈ 	
lytPax
∆∆ 
.
∆∆ 
	IsVisible
∆∆ 
=
∆∆ 
true
∆∆ #
;
∆∆# $
lytModifyDate
«« 
.
«« 
	IsVisible
«« #
=
««$ %
true
««& *
;
««* +
lytModifyReason
»» 
.
»» 
	IsVisible
»» %
=
»»& '
true
»»( ,
;
»», -
lytDateEntry
…… 
.
…… 
	IsVisible
…… "
=
……# $
false
……% *
;
……* +
	lytReason
   
.
   
	IsVisible
   
=
    !
true
  " &
;
  & '
lblDateTime
œœ 
.
œœ 
	IsVisible
œœ !
=
œœ" #
false
œœ$ )
;
œœ) *
}
–– 	
private
““ 
void
““ 
Completed_State
““ $
(
““$ %
)
““% &
{
”” 	
lytPax
‘‘ 
.
‘‘ 
	IsVisible
‘‘ 
=
‘‘ 
false
‘‘ $
;
‘‘$ %
lytModifyDate
’’ 
.
’’ 
	IsVisible
’’ #
=
’’$ %
false
’’& +
;
’’+ ,
lytModifyReason
÷÷ 
.
÷÷ 
	IsVisible
÷÷ %
=
÷÷& '
false
÷÷( -
;
÷÷- .
lytDateEntry
◊◊ 
.
◊◊ 
	IsVisible
◊◊ "
=
◊◊# $
false
◊◊% *
;
◊◊* +
	lytReason
ÿÿ 
.
ÿÿ 
	IsVisible
ÿÿ 
=
ÿÿ  !
false
ÿÿ" '
;
ÿÿ' (
lblDateTime
⁄⁄ 
.
⁄⁄ 
	IsVisible
⁄⁄ !
=
⁄⁄" #
false
⁄⁄$ )
;
⁄⁄) *
btnAcknowledge
‹‹ 
.
‹‹ 
	IsVisible
‹‹ $
=
‹‹% &
false
‹‹' ,
;
‹‹, -
btnAcknowledge
›› 
.
›› 
	IsVisible
›› $
=
››% &
false
››' ,
;
››, -
btnBegin
ﬁﬁ 
.
ﬁﬁ 
	IsVisible
ﬁﬁ 
=
ﬁﬁ  
false
ﬁﬁ! &
;
ﬁﬁ& '
btnEnd
‡‡ 
.
‡‡ 
	IsVisible
‡‡ 
=
‡‡ 
false
‡‡ $
;
‡‡$ %
btnMap
·· 
.
·· 
	IsVisible
·· 
=
·· 
false
·· $
;
··$ %
}
‚‚ 	
private
‰‰ 
void
‰‰ $
BtnStandByTime_Clicked
‰‰ +
(
‰‰+ ,
object
‰‰, 2
sender
‰‰3 9
,
‰‰9 :
	EventArgs
‰‰; D
e
‰‰E F
)
‰‰F G
{
ÂÂ 	
this
ÊÊ 
.
ÊÊ 
	viewModel
ÊÊ 
.
ÊÊ 
ModifyReason
ÊÊ '
=
ÊÊ( )
false
ÊÊ* /
;
ÊÊ/ 0
this
ÁÁ 
.
ÁÁ 
	viewModel
ÁÁ 
.
ÁÁ 
ModifyStandByDate
ÁÁ ,
=
ÁÁ- .
true
ÁÁ/ 3
;
ÁÁ3 4
this
ÈÈ 
.
ÈÈ 
pickerReason
ÈÈ 
.
ÈÈ 
SelectedItem
ÈÈ *
=
ÈÈ+ ,
null
ÈÈ- 1
;
ÈÈ1 2%
ModifyStandbyDate_State
ÎÎ #
(
ÎÎ# $
)
ÎÎ$ %
;
ÎÎ% &
}
ÌÌ 	
private
ÔÔ 
void
ÔÔ 
BtnReason_Clicked
ÔÔ &
(
ÔÔ& '
object
ÔÔ' -
sender
ÔÔ. 4
,
ÔÔ4 5
	EventArgs
ÔÔ6 ?
e
ÔÔ@ A
)
ÔÔA B
{
 	
this
ÒÒ 
.
ÒÒ 
	viewModel
ÒÒ 
.
ÒÒ 
ModifyReason
ÒÒ '
=
ÒÒ( )
true
ÒÒ* .
;
ÒÒ. /
this
ÚÚ 
.
ÚÚ 
	viewModel
ÚÚ 
.
ÚÚ 
ModifyStandByDate
ÚÚ ,
=
ÚÚ- .
false
ÚÚ/ 4
;
ÚÚ4 5 
ModifyReason_State
ÙÙ 
(
ÙÙ 
)
ÙÙ  
;
ÙÙ  !
}
ıı 	
private
¸¸ 
void
¸¸ &
ModifyDateSwitch_Toggled
¸¸ -
(
¸¸- .
object
¸¸. 4
sender
¸¸5 ;
,
¸¸; <
ToggledEventArgs
¸¸= M
e
¸¸N O
)
¸¸O P
{
˝˝ 	
if
˛˛ 
(
˛˛ 
	viewModel
˛˛ 
.
˛˛ 
ModifyStandByDate
˛˛ +
)
˛˛+ ,
{
ˇˇ %
ModifyStandbyDate_State
ÄÄ '
(
ÄÄ' (
)
ÄÄ( )
;
ÄÄ) *
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
InProgress_State
ÑÑ  
(
ÑÑ  !
)
ÑÑ! "
;
ÑÑ" #
}
ÖÖ 
}
ÜÜ 	
private
çç 
void
çç (
ModifyReasonSwitch_Toggled
çç /
(
çç/ 0
object
çç0 6
sender
çç7 =
,
çç= >
ToggledEventArgs
çç? O
e
ççP Q
)
ççQ R
{
éé 	
if
èè 
(
èè 
	viewModel
èè 
.
èè 
ModifyReason
èè &
)
èè& '
{
êê  
ModifyReason_State
ëë "
(
ëë" #
)
ëë# $
;
ëë$ %
}
íí 
else
ìì 
{
îî 
InProgress_State
ïï  
(
ïï  !
)
ïï! "
;
ïï" #
}
ññ 
}
óó 	
}
òò 
}ôô ÌI
aC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\SnapShotPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions (
.( )
Compile) 0
)0 1
]1 2
public 
partial 
class 
SnapShotPage "
:# $
ContentPage% 0
{ 
static 
Plugin 
. 
Media 
. 
Abstractions (
.( )
	MediaFile) 2
file3 7
;7 8
static 
string 
	photoDesc 
;  
SnapShotService 
service 
;  !
SnapShotPageViewModel 
	viewModel '
;' (
byte 
[ 
] 
snapShotPhoto 
; 
public 
SnapShotPage	 
( 
Int64 
serviceJobId )
,) *
	MediaFile+ 4
	mediaFile5 >
)> ?
{   
InitializeComponent!! 
(!! 
)!! 
;!! 
BindingContext## 
=## 
	viewModel## &
=##' (
new##) ,!
SnapShotPageViewModel##- B
(##B C
)##C D
;##D E
this%% 
.%% 
	viewModel%% 
.%% 
IsBusy%% !
=%%" #
false%%$ )
;%%) *
service'' 
='' 
new'' 
SnapShotService'' )
('') *
)''* +
;''+ ,
lblServerJobId(( 
.(( 
Text(( 
=((  !
serviceJobId((" .
.((. /
ToString((/ 7
(((7 8
)((8 9
;((9 :
file** 
=** 
	mediaFile** 
;** 
if,, 
(,, 
file,, 
!=,, 
null,, 
),, 
{-- 
imgSnapShot.. 
... 
Source.. "
=..# $
ImageSource..% 0
...0 1

FromStream..1 ;
(..; <
(..< =
)..= >
=>..? A
{// 
var00 
stream00 
=00  
file00! %
.00% &
	GetStream00& /
(00/ 0
)000 1
;001 2
return22 
stream22 !
;22! "
}33 
)33 
;33 
}44 
}55 
private77 
async77 
void77 !
BtnSnapShot_OnClicked77 0
(770 1
object771 7
sender778 >
,77> ?
	EventArgs77@ I
e77J K
)77K L
{88 	
	photoDesc;; 
=;; 
txtSnapShotDes;; &
.;;& '
Text;;' +
==;;, .
null;;/ 3
?;;4 5
DateTime;;6 >
.;;> ?
Now;;? B
.;;B C
ToLongDateString;;C S
(;;S T
);;T U
+;;V W
$str;;X Z
:;;[ \
DateTime;;] e
.;;e f
Now;;f i
.;;i j
ToLongDateString;;j z
(;;z {
);;{ |
+;;} ~
txtSnapShotDes	;; ç
.
;;ç é
Text
;;é í
;
;;í ì
if?? 
(?? 
!?? 
(?? 

CrossMedia?? 
.?? 
Current?? $
.??$ %
IsCameraAvailable??% 6
&&??7 9

CrossMedia??: D
.??D E
Current??E L
.??L M 
IsTakePhotoSupported??M a
)??a b
)??b c
{@@ 
awaitAA 
DisplayAlertAA "
(AA" #
$strAA# .
,AA. /
$strAA0 I
,AAI J
$strAAK O
)AAO P
;AAP Q
returnBB 
;BB 
}CC 
fileEE 
=EE 
awaitEE 

CrossMediaEE #
.EE# $
CurrentEE$ +
.EE+ ,
TakePhotoAsyncEE, :
(EE: ;
newEE; >#
StoreCameraMediaOptionsEE? V
(EEV W
)EEW X
{FF 
	PhotoSizeGG 
=GG 
PluginGG "
.GG" #
MediaGG# (
.GG( )
AbstractionsGG) 5
.GG5 6
	PhotoSizeGG6 ?
.GG? @
MediumGG@ F
,GGF G
DefaultCameraHH 
=HH 
CameraDeviceHH  ,
.HH, -
RearHH- 1
,HH1 2
SaveToAlbumII 
=II 
falseII #
,II# $
NameJJ 
=JJ 
	photoDescJJ !
}KK 
)KK 
;KK 
ifMM 
(MM 
fileMM 
==MM 
nullMM 
)MM 
{NN 
returnOO 
;OO 
}PP 
imgSnapShotRR 
.RR 
SourceRR 
=RR  
ImageSourceRR! ,
.RR, -

FromStreamRR- 7
(RR7 8
(RR8 9
)RR9 :
=>RR; =
{SS 
varTT 
streamTT 
=TT 
fileTT !
.TT! "
	GetStreamTT" +
(TT+ ,
)TT, -
;TT- .
returnVV 
streamVV 
;VV 
}WW 
)WW 
;WW 
}ZZ 	
private\\ 
async\\ 
void\\ 
BtnSubmit_OnClicked\\ .
(\\. /
object\\/ 5
sender\\6 <
,\\< =
	EventArgs\\> G
e\\H I
)\\I J
{]] 	
	btnSubmit^^ 
.^^ 
	IsEnabled^^ 
=^^  !
false^^" '
;^^' (
if`` 
(`` 
CrossConnectivity`` !
.``! "
Current``" )
.``) *
IsConnected``* 5
)``5 6
{aa 
thisbb 
.bb 
	viewModelbb 
.bb 
IsBusybb %
=bb& '
truebb( ,
;bb, -
	photoDescdd 
=dd 
DateTimedd $
.dd$ %
Nowdd% (
.dd( )
ToStringdd) 1
(dd1 2
$strdd2 5
)dd5 6
;dd6 7
ifff 
(ff 
fileff 
==ff 
nullff  
)ff  !
{gg 
thishh 
.hh 
	viewModelhh "
.hh" #
IsBusyhh# )
=hh* +
falsehh, 1
;hh1 2
awaitjj 
DisplayAlertjj &
(jj& '
$strjj' 1
,jj1 2
$strjj3 a
,jja b
$strjjc i
)jji j
;jjj k
returnkk 
;kk 
}ll 
elsemm 
{nn 
Streamoo 
imageoo  
=oo! "
fileoo# '
.oo' (
	GetStreamoo( 1
(oo1 2
)oo2 3
;oo3 4
snapShotPhotoqq !
=qq" #
ImageManipulatorqq$ 4
.qq4 5$
ConvertStreamToByteArrayqq5 M
(qqM N
imageqqN S
)qqS T
;qqT U
SnapShotss 

snapEntityss '
=ss( )
newss* -
SnapShotss. 6
(ss6 7
)ss7 8
{tt 
serviceJobIduu $
=uu% &
Convertuu' .
.uu. /
ToInt64uu/ 6
(uu6 7
lblServerJobIduu7 E
.uuE F
TextuuF J
)uuJ K
,uuK L
snapShotFilevv $
=vv% &
snapShotPhotovv' 4
,vv4 5
filenameww  
=ww! "
	photoDescww# ,
,ww, -
descriptionxx #
=xx$ %
Stringxx& ,
.xx, -
IsNullOrEmptyxx- :
(xx: ;
txtSnapShotDesxx; I
.xxI J
TextxxJ N
)xxN O
?xxP Q
StringxxR X
.xxX Y
EmptyxxY ^
:xx_ `
txtSnapShotDesxxa o
.xxo p
Textxxp t
}yy 
;yy 
if|| 
(|| 
await|| 
service|| %
.||% &
Save||& *
(||* +

snapEntity||+ 5
)||5 6
)||6 7
{}} 
this~~ 
.~~ 
	viewModel~~ &
.~~& '
IsBusy~~' -
=~~. /
false~~0 5
;~~5 6
file
ÇÇ 
.
ÇÇ 
Dispose
ÇÇ $
(
ÇÇ$ %
)
ÇÇ% &
;
ÇÇ& '
await
ÑÑ 

Navigation
ÑÑ (
.
ÑÑ( )
PopAsync
ÑÑ) 1
(
ÑÑ1 2
)
ÑÑ2 3
;
ÑÑ3 4
}
ÖÖ 
else
ÜÜ 
{
áá 
this
àà 
.
àà 
	viewModel
àà &
.
àà& '
IsBusy
àà' -
=
àà. /
false
àà0 5
;
àà5 6
await
ää 
DisplayAlert
ää *
(
ää* +
$str
ää+ 3
,
ää3 4
$str
ää5 |
,
ää| }
$strää~ Ñ
)ääÑ Ö
;ääÖ Ü
return
ãã 
;
ãã 
}
åå 
}
çç 
}
éé 
else
èè 
{
êê 
await
ëë 
DisplayAlert
ëë "
(
ëë" #
$str
ëë# 5
,
ëë5 6
$strëë7 ç
,ëëç é
$strëëè ï
)ëëï ñ
;ëëñ ó
}
íí 
	btnSubmit
îî 
.
îî 
	IsEnabled
îî 
=
îî  !
true
îî" &
;
îî& '
}
ïï 	
}
ññ 
}óó ÓA
_C:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\SignInPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions +
.+ ,
Compile, 3
)3 4
]4 5
public 

partial 
class 

SignInPage #
:$ %
ContentPage& 1
{ 
UserService 
userService 
;  
User 
currentUser 
; 
User 
existingUser 
; 
DeviceDetails 

devDetails  
;  !
SignInPageViewModel 
	viewModel %
;% &
public 

SignInPage 
( 
) 
{ 	
this 
. 
InitializeComponent $
($ %
)% &
;& '
this 
. 
BindingContext 
=  !
	viewModel" +
=, -
new. 1
SignInPageViewModel2 E
(E F
)F G
;G H
this 
. 
	viewModel 
. 
IsBusy !
=" #
false$ )
;) *
userService   
=   
new   
UserService   )
(  ) *
)  * +
;  + ,
}!! 	
private## 
async## 
void## !
LoginButton_OnClicked## 0
(##0 1
object##1 7
sender##8 >
,##> ?
	EventArgs##@ I
e##J K
)##K L
{$$ 	
this%% 
.%% 
	viewModel%% 
.%% 
IsBusy%% !
=%%" #
true%%$ (
;%%( )
btnLogin&& 
.&& 
	IsEnabled&& 
=&&  
false&&! &
;&&& '
if(( 
((( 
CrossConnectivity(( !
.((! "
Current((" )
.(() *
IsConnected((* 5
)((5 6
{)) 
try** 
{++ 
DeviceDetails,, !
currentToken,," .
=,,/ 0
await,,1 6
App,,7 :
.,,: ;

DeviceRepo,,; E
.,,E F!
GetDeviceDetailsAsync,,F [
(,,[ \
MiscConstants,,\ i
.,,i j
devDetailId,,j u
),,u v
;,,v w
if.. 
(.. 
currentToken.. $
==..% '
null..( ,
).., -
{// 
if00 
(00 
App00 
.00  
Token00  %
==00& (
$str00) +
)00+ ,
{11 
this22  
.22  !
	viewModel22! *
.22* +
IsBusy22+ 1
=222 3
false224 9
;229 :
btnLogin33 $
.33$ %
	IsEnabled33% .
=33/ 0
true331 5
;335 6
await55 !
DisplayAlert55" .
(55. /
$str55/ 8
,558 9
$str55: v
,55v w
$str55x ~
)55~ 
;	55 Ä
return66 "
;66" #
}77 

devDetails99 "
=99# $
new99% (
DeviceDetails99) 6
(996 7
)997 8
{:: 
Id;; 
=;;  
MiscConstants;;! .
.;;. /
devDetailId;;/ :
,;;: ;
devToken<< $
=<<% &
App<<' *
.<<* +
Token<<+ 0
}== 
;== 
await?? 
App?? !
.??! "

DeviceRepo??" ,
.??, -!
AddDeviceDetailsAsync??- B
(??B C

devDetails??C M
)??M N
;??N O
}AA 
elseBB 
{CC 
AppDD 
.DD 
TokenDD !
=DD" #
currentTokenDD$ 0
.DD0 1
devTokenDD1 9
;DD9 :
}EE 
currentUserGG 
=GG  !
awaitGG" '
userServiceGG( 3
.GG3 4
ExistGG4 9
(GG9 :
newGG: =
UserCriGG> E
{GGF G
UserNameGGH P
=GGQ R
txtUserNameGGS ^
.GG^ _
TextGG_ c
,GGc d
PasswordGGe m
=GGn o
txtPasswordGGp {
.GG{ |
Text	GG| Ä
}
GGÅ Ç
,
GGÇ É
App
GGÑ á
.
GGá à
Token
GGà ç
)
GGç é
;
GGé è
thisII 
.II 
	viewModelII "
.II" #
IsBusyII# )
=II* +
falseII, 1
;II1 2
btnLoginJJ 
.JJ 
	IsEnabledJJ &
=JJ' (
trueJJ) -
;JJ- .
ifLL 
(LL 
!LL 
(LL 
currentUserLL %
==LL& (
nullLL) -
)LL- .
)LL. /
{MM 
existingUserNN $
=NN% &
awaitNN' ,
AppNN- 0
.NN0 1
UserRepoNN1 9
.NN9 :
GetUserByIdAsyncNN: J
(NNJ K
currentUserNNK V
.NNV W
User_IdNNW ^
)NN^ _
;NN_ `
ifPP 
(PP 
!PP 
(PP 
existingUserPP *
==PP+ -
nullPP. 2
)PP2 3
)PP3 4
{QQ 
awaitRR !
AppRR" %
.RR% &
UserRepoRR& .
.RR. /
UpdateUserAsyncRR/ >
(RR> ?
currentUserRR? J
)RRJ K
;RRK L
}SS 
elseTT 
{UU 
awaitVV !
AppVV" %
.VV% &
UserRepoVV& .
.VV. /
AddUserAsyncVV/ ;
(VV; <
currentUserVV< G
)VVG H
;VVH I
}WW 
awaitYY 

NavigationYY (
.YY( )
	PushAsyncYY) 2
(YY2 3
newYY3 6
MainPageYY7 ?
(YY? @
)YY@ A
)YYA B
;YYB C
}ZZ 
else[[ 
{\\ 
await]] 
DisplayAlert]] *
(]]* +
$str]]+ :
,]]: ;
$str]]< `
,]]` a
$str]]b j
)]]j k
;]]k l
}^^ 
}__ 
catch`` 
(`` 
	Exception``  
ex``! #
)``# $
{aa 
Debugbb 
.bb 
	WriteLinebb #
(bb# $
exbb$ &
)bb& '
;bb' (
}cc 
finallydd 
{ee 
thisff 
.ff 
	viewModelff "
.ff" #
IsBusyff# )
=ff* +
falseff, 1
;ff1 2
}gg 
}hh 
elseii 
{jj 
thiskk 
.kk 
	viewModelkk 
.kk 
IsBusykk %
=kk& '
falsekk( -
;kk- .
awaitll 
DisplayAlertll "
(ll" #
$strll# 5
,ll5 6
$str	ll7 ç
,
llç é
$str
llè ï
)
llï ñ
;
llñ ó
}mm 
}oo 	
privateqq 
asyncqq 
voidqq 
ConfigItem_Clickedqq -
(qq- .
objectqq. 4
senderqq5 ;
,qq; <
	EventArgsqq= F
eqqG H
)qqH I
{rr 	
awaitss 

Navigationss 
.ss 
	PushAsyncss &
(ss& '
newss' *
ServerConfigPagess+ ;
(ss; <
)ss< =
)ss= >
;ss> ?
}tt 	
	protectedvv 
overridevv 
asyncvv  
voidvv! %
OnAppearingvv& 1
(vv1 2
)vv2 3
{ww 	
Userxx 
userxx 
=xx 
awaitxx 
Appxx !
.xx! "
UserRepoxx" *
.xx* + 
GetLoggedInUserAsyncxx+ ?
(xx? @
)xx@ A
;xxA B
ifzz 
(zz 
!zz 
(zz 
userzz 
==zz 
nullzz 
||zz !
userzz" &
.zz& '

isSignedInzz' 1
==zz2 4
falsezz5 :
)zz: ;
)zz; <
{{{ 
await|| 

Navigation||  
.||  !
	PushAsync||! *
(||* +
new||+ .
MainPage||/ 7
(||7 8
)||8 9
)||9 :
;||: ;
}}} 
}~~ 	
} 
}ÄÄ —h
bC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\SignaturePage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions +
.+ ,
Compile, 3
)3 4
]4 5
public 

partial 
class 
SignaturePage &
:' (
ContentPage) 4
{ 
SignatureViewModel 
	viewModel $
;$ %
byte 
[ 
] 
signatureFile 
; 
SignatureService 

sigService #
;# $
public 
SignaturePage 
( 
	WorkOrder &

_workOrder' 1
)1 2
{ 	
InitializeComponent 
(  
)  !
;! "
this!! 
.!! 
Title!! 
=!! 
$str!! $
;!!$ %
SignatureViewModel## 

_viewModel## )
=##* +
new##, /
SignatureViewModel##0 B
(##B C

_workOrder##C M
)##M N
;##N O
lblserviceJobId%% 
.%% 
Text%%  
=%%! "

_workOrder%%# -
.%%- .
ServiceJobId%%. :
.%%: ;
ToString%%; C
(%%C D
)%%D E
;%%E F
lblwoId&& 
.&& 
Text&& 
=&& 

_workOrder&& %
.&&% &
WorkOrderId&&& 1
.&&1 2
ToString&&2 :
(&&: ;
)&&; <
;&&< =

sigService'' 
='' 
new'' 
SignatureService'' -
(''- .
)''. /
;''/ 0
BindingContext)) 
=)) 
this)) !
.))! "
	viewModel))" +
=)), -

_viewModel)). 8
;))8 9
this++ 
.++ 
	viewModel++ 
.++ 
IsBusy++ !
=++" #
false++$ )
;++) *
},, 	
	protected.. 
async.. 
override..  
void..! %
OnAppearing..& 1
(..1 2
)..2 3
{// 	
base00 
.00 
OnAppearing00 
(00 
)00 
;00 
if22 
(22 
CrossConnectivity22 !
.22! "
Current22" )
.22) *
IsConnected22* 5
)225 6
{33 
await44 
	viewModel44 
.44  (
ExecuteLoadReferencesCommand44  <
(44< =
)44= >
;44> ?
}55 
}66 	
private88 
async88 
void88 !
BtnSaveSign_onClicked88 0
(880 1
object881 7
sender888 >
,88> ?
	EventArgs88@ I
e88J K
)88K L
{99 	
try:: 
{;; 
btnSaveSign<< 
.<< 
	IsEnabled<< %
=<<& '
false<<( -
;<<- .
if>> 
(>> 
CrossConnectivity>> %
.>>% &
Current>>& -
.>>- .
IsConnected>>. 9
)>>9 :
{?? 
var@@ 
confirm@@ 
=@@  !
await@@" '
DisplayAlert@@( 4
(@@4 5
$str@@5 >
,@@> ?
$str@@@ i
,@@i j
$str@@k p
,@@p q
$str@@r v
)@@v w
;@@w x
ifBB 
(BB 
confirmBB 
)BB  
{CC 
thisDD 
.DD 
	viewModelDD &
.DD& '
IsBusyDD' -
=DD. /
trueDD0 4
;DD4 5
varFF 
	passengerFF %
=FF& '"
pickerCurrentPassengerFF( >
.FF> ?
SelectedItemFF? K
asFFL N
WorkOrderPassengerFFO a
;FFa b
ifGG 
(GG 
	passengerGG $
==GG% '
nullGG( ,
)GG, -
{HH 
thisII  
.II  !
	viewModelII! *
.II* +
IsBusyII+ 1
=II2 3
falseII4 9
;II9 :
awaitKK !
DisplayAlertKK" .
(KK. /
$strKK/ 9
,KK9 :
$strKK; V
,KKV W
$strKKX ^
)KK^ _
;KK_ `
returnLL "
;LL" #
}MM 
StreamOO 
imageOO $
=OO% &
awaitOO' ,
padViewOO- 4
.OO4 5
GetImageStreamAsyncOO5 H
(OOH I 
SignatureImageFormatOOI ]
.OO] ^
PngOO^ a
)OOa b
;OOb c
ifQQ 
(QQ 
imageQQ !
==QQ" $
nullQQ% )
)QQ) *
{RR 
thisSS  
.SS  !
	viewModelSS! *
.SS* +
IsBusySS+ 1
=SS2 3
falseSS4 9
;SS9 :
awaitUU !
DisplayAlertUU" .
(UU. /
$strUU/ 9
,UU9 :
$strUU; ^
,UU^ _
$strUU` f
)UUf g
;UUg h
returnVV "
;VV" #
}WW 
signatureFileYY %
=YY& '
ImageManipulatorYY( 8
.YY8 9$
ConvertStreamToByteArrayYY9 Q
(YYQ R
imageYYR W
)YYW X
;YYX Y
	Signature[[ !
	sigEntity[[" +
=[[, -
new[[. 1
	Signature[[2 ;
([[; <
)[[< =
{\\ 
serviceJobId]] (
=]]) *
Convert]]+ 2
.]]2 3
ToInt64]]3 :
(]]: ;
lblserviceJobId]]; J
.]]J K
Text]]K O
)]]O P
,]]P Q
signatureFile^^ )
=^^* +
this^^, 0
.^^0 1
signatureFile^^1 >
,^^> ?
signatureName__ )
=__* + 
txtInChargePassenger__, @
.__@ A
Text__A E
,__E F
PassengerId`` '
=``( )
	passenger``* 3
.``3 4
Id``4 6
}aa 
;aa 
ifcc 
(cc 
awaitcc !

sigServicecc" ,
.cc, -
SaveWithPassengerIdcc- @
(cc@ A
	sigEntityccA J
)ccJ K
)ccK L
{dd 
varee 

passengersee  *
=ee+ ,
	viewModelee- 6
.ee6 7

Passengersee7 A
.eeA B
ToListeeB H
(eeH I
)eeI J
;eeJ K
vargg 
selectedPassengergg  1
=gg2 3

passengersgg4 >
.gg> ?
Wheregg? D
(ggD E
xggE F
=>ggG I
xggJ K
.ggK L
IdggL N
==ggO Q
	passengerggR [
.gg[ \
Idgg\ ^
)gg^ _
.gg_ `
FirstOrDefaultgg` n
(ggn o
)ggo p
;ggp q
ifii 
(ii  
selectedPassengerii  1
!=ii2 4
nullii5 9
)ii9 :
{jj 
	viewModelkk  )
.kk) *

Passengerskk* 4
.kk4 5
Removekk5 ;
(kk; <
selectedPassengerkk< M
)kkM N
;kkN O
padViewmm  '
.mm' (
Clearmm( -
(mm- .
)mm. /
;mm/ 0
DependencyServiceoo  1
.oo1 2
Getoo2 5
<oo5 6
IMessageoo6 >
>oo> ?
(oo? @
)oo@ A
.ooA B
	LongAlertooB K
(ooK L
$strooL j
)ooj k
;ook l
}pp 
}qq 
elserr 
{ss 
thistt  
.tt  !
	viewModeltt! *
.tt* +
IsBusytt+ 1
=tt2 3
falsett4 9
;tt9 :
awaituu !
DisplayAlertuu" .
(uu. /
$struu/ 7
,uu7 8
$str	uu9 Ä
,
uuÄ Å
$str
uuÇ à
)
uuà â
;
uuâ ä
returnvv "
;vv" #
}ww 
}xx 
}zz 
else{{ 
{|| 
await}} 
DisplayAlert}} &
(}}& '
$str}}' 9
,}}9 :
$str	}}; ë
,
}}ë í
$str
}}ì ô
)
}}ô ö
;
}}ö õ
}~~ 
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
	Exception
ÅÅ 
ex
ÅÅ 
)
ÅÅ  
{
ÇÇ 
}
ÑÑ 
finally
ÖÖ 
{
ÜÜ 
this
áá 
.
áá 
	viewModel
áá 
.
áá 
IsBusy
áá %
=
áá& '
false
áá( -
;
áá- .
btnSaveSign
àà 
.
àà 
	IsEnabled
àà %
=
àà& '
true
àà( ,
;
àà, -
}
ââ 
}
ää 	
private
åå 
void
åå %
btnAddPassenger_Clicked
åå ,
(
åå, -
object
åå- 3
sender
åå4 :
,
åå: ;
	EventArgs
åå< E
e
ååF G
)
ååG H
{
çç 	
btnAddPassenger
éé 
.
éé 
	IsEnabled
éé %
=
éé& '
false
éé( -
;
éé- .
string
êê 
url
êê 
=
êê 
UrlConstants
êê %
.
êê% &
ADD_PASSENGER
êê& 3
+
êê4 5
$str
êê6 E
+
êêF G
lblwoId
êêH O
.
êêO P
Text
êêP T
.
êêT U
ToString
êêU ]
(
êê] ^
)
êê^ _
+
êê` a
$str
êêb r
+
êês t
lblserviceJobIdêêu Ñ
.êêÑ Ö
TextêêÖ â
.êêâ ä
ToStringêêä í
(êêí ì
)êêì î
+êêï ñ
$strêêó £
+êê§ •
ApiConstantsêê¶ ≤
.êê≤ ≥
KEYêê≥ ∂
+êê∑ ∏
$strêêπ Ã
+êêÕ Œ
UserConfigsêêœ ⁄
.êê⁄ € 
PARENTCOMPANY_IDêê€ Î
.êêÎ Ï
ToStringêêÏ Ù
(êêÙ ı
)êêı ˆ
;êêˆ ˜
var
íí 
uri
íí 
=
íí 
new
íí 
Uri
íí 
(
íí 
string
íí $
.
íí$ %
Format
íí% +
(
íí+ ,
url
íí, /
,
íí/ 0
string
íí1 7
.
íí7 8
Empty
íí8 =
)
íí= >
)
íí> ?
;
íí? @
Device
îî 
.
îî 
OpenUri
îî 
(
îî 
uri
îî 
)
îî 
;
îî  
btnAddPassenger
ññ 
.
ññ 
	IsEnabled
ññ %
=
ññ& '
true
ññ( ,
;
ññ, -
}
óó 	
private
ôô 
async
ôô 
void
ôô %
btnCompleteSign_Clicked
ôô 2
(
ôô2 3
object
ôô3 9
sender
ôô: @
,
ôô@ A
	EventArgs
ôôB K
e
ôôL M
)
ôôM N
{
öö 	
var
õõ 

passengers
õõ 
=
õõ 
	viewModel
õõ &
.
õõ& '

Passengers
õõ' 1
.
õõ1 2
ToList
õõ2 8
(
õõ8 9
)
õõ9 :
;
õõ: ;
if
ùù 
(
ùù 

passengers
ùù 
.
ùù 
Count
ùù  
(
ùù  !
)
ùù! "
>
ùù# $
$num
ùù% &
)
ùù& '
{
ûû 
await
üü 
DisplayAlert
üü "
(
üü" #
$str
üü# -
,
üü- .
$str
üü/ [
,
üü[ \
$str
üü] c
)
üüc d
;
üüd e
this
†† 
.
†† 
	viewModel
†† 
.
†† 
IsBusy
†† %
=
††& '
false
††( -
;
††- .
return
°° 
;
°° 
}
¢¢ 
else
££ 
{
§§ 
var
•• 
confirm
•• 
=
•• 
await
•• #
DisplayAlert
••$ 0
(
••0 1
$str
••1 :
,
••: ;
$str
••< n
,
••n o
$str
••p u
,
••u v
$str
••w {
)
••{ |
;
••| }
if
ßß 
(
ßß 
confirm
ßß 
)
ßß 
{
®® 
DependencyService
©© %
.
©©% &
Get
©©& )
<
©©) *
IMessage
©©* 2
>
©©2 3
(
©©3 4
)
©©4 5
.
©©5 6
	LongAlert
©©6 ?
(
©©? @
$str
©©@ ]
)
©©] ^
;
©©^ _
await
≠≠ 
App
≠≠ 
.
≠≠ 
woStatusRepo
≠≠ *
.
≠≠* +*
UpdateCustomerSignatureState
≠≠+ G
(
≠≠G H
Convert
≠≠H O
.
≠≠O P
ToInt64
≠≠P W
(
≠≠W X
lblwoId
≠≠X _
.
≠≠_ `
Text
≠≠` d
)
≠≠d e
,
≠≠e f
Convert
≠≠g n
.
≠≠n o
ToInt64
≠≠o v
(
≠≠v w
lblserviceJobId≠≠w Ü
.≠≠Ü á
Text≠≠á ã
)≠≠ã å
)≠≠å ç
;≠≠ç é
await
ØØ 

Navigation
ØØ $
.
ØØ$ %
PopAsync
ØØ% -
(
ØØ- .
)
ØØ. /
;
ØØ/ 0
}
∞∞ 
else
±± 
{
≤≤ 
this
≥≥ 
.
≥≥ 
	viewModel
≥≥ "
.
≥≥" #
IsBusy
≥≥# )
=
≥≥* +
false
≥≥, 1
;
≥≥1 2
return
¥¥ 
;
¥¥ 
}
µµ 
}
∂∂ 
}
∑∑ 	
}
∏∏ 
}ππ ˆ
aC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\SettingsPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions (
.( )
Compile) 0
)0 1
]1 2
public 
partial 
class 
SettingsPage "
:# $
ContentPage% 0
{ !
SettingsPageViewModel 
	viewModel '
;' (
UserService 
userService 
;  
User 
currentUser 
; 
public 
SettingsPage 
( 
) 
{ 
InitializeComponent 
( 
) 
; 
userService 
= 
new 
UserService )
() *
)* +
;+ ,
BindingContext 
= 
this !
.! "
	viewModel" +
=, -
new. 1!
SettingsPageViewModel2 G
(G H
)H I
;I J
} 
private 
async 
void !
SignOutButton_Clicked 0
(0 1
object1 7
sender8 >
,> ?
	EventArgs@ I
eJ K
)K L
{   	
currentUser(( 
=(( 
await(( 
App((  #
.((# $
UserRepo(($ ,
.((, - 
GetLoggedInUserAsync((- A
(((A B
)((B C
;((C D
if** 
(** 
await** 
userService** !
.**! "
LogOut**" (
(**( )
currentUser**) 4
.**4 5
UserName**5 =
)**= >
)**> ?
{++ 
currentUser,, 
.,, 

isSignedIn,, &
=,,' (
false,,) .
;,,. /
await.. 
App.. 
... 
UserRepo.. "
..." #
UpdateUserAsync..# 2
(..2 3
currentUser..3 >
)..> ?
;..? @
await00 
DisplayAlert00 "
(00" #
$str00# ,
,00, -
$str00. d
,00d e
$str00f l
)00l m
;00m n
await22 

Navigation22  
.22  !
PopToRootAsync22! /
(22/ 0
)220 1
;221 2
}33 
else44 
{55 
await66 
DisplayAlert66 "
(66" #
$str66# *
,66* +
$str66, ^
,66^ _
$str66` f
)66f g
;66g h
}77 
}88 	
}99 
}:: à(
eC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\ServerConfigPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions (
.( )
Compile) 0
)0 1
]1 2
public 
partial 
class 
ServerConfigPage &
:' (
ContentPage) 4
{ 
ServerDetails 

newDetails  
;  !
ServerDetails 
existingDetails %
;% &%
ServerConfigPageViewModel !
	viewModel" +
;+ ,
public 
ServerConfigPage 
(  !
)! "
{ 
InitializeComponent 
( 
) 
; 
BindingContext 
= 
	viewModel &
=' (
new) ,%
ServerConfigPageViewModel- F
(F G
)G H
{ 
Title 
= 
$str .
} 
; 
} 	
private!! 
async!! 
void!! 
BtnSave_onClicked!! ,
(!!, -
object!!- 3
sender!!4 :
,!!: ;
	EventArgs!!< E
e!!F G
)!!G H
{"" 	
if## 
(## 
txtIP## 
.## 
Text## 
==## 
$str##  
||##! #
txtPort##$ +
.##+ ,
Text##, 0
==##1 3
$str##4 6
)##6 7
{$$ 
await%% 
DisplayAlert%% "
(%%" #
$str%%# 6
,%%6 7
$str%%8 u
,%%u v
$str%%w }
)%%} ~
;%%~ 
}&& 
else'' 
{(( 
if)) 
()) 
CrossConnectivity)) %
.))% &
Current))& -
.))- .
IsConnected)). 9
)))9 :
{** 

newDetails++ 
=++  
new++! $
ServerDetails++% 2
(++2 3
)++3 4
{,, 
IP-- 
=-- 
txtIP-- "
.--" #
Text--# '
,--' (
Port.. 
=.. 
txtPort.. &
...& '
Text..' +
,..+ ,
isHTTPS// 
=//  !
pickHTTP//" *
.//* +
SelectedItem//+ 7
.//7 8
ToString//8 @
(//@ A
)//A B
==//C E
$str//F L
?//M N
false//O T
://U V
true//W [
,//[ \
inUse00 
=00 
true00  $
}11 
;11 
this33 
.33 
IsBusy33 
=33  !
true33" &
;33& '
try55 
{66 
existingDetails77 '
=77( )
await77* /
App770 3
.773 4

ServerRepo774 >
.77> ?%
GetServerDetailsByIPAsync77? X
(77X Y

newDetails77Y c
.77c d
IP77d f
)77f g
;77g h
if99 
(99 
!99 
(99 
existingDetails99 -
==99. 0
null991 5
)995 6
)996 7
{:: 
await;; !
App;;" %
.;;% &

ServerRepo;;& 0
.;;0 1$
UpdateServerDetailsAsync;;1 I
(;;I J

newDetails;;J T
);;T U
;;;U V
}<< 
else== 
{>> 
await?? !
App??" %
.??% &

ServerRepo??& 0
.??0 1!
AddServerDetailsAsync??1 F
(??F G

newDetails??G Q
)??Q R
;??R S
}@@ 
ServerConfigsBB %
.BB% &
IPBB& (
=BB) *

newDetailsBB+ 5
.BB5 6
IPBB6 8
;BB8 9
ServerConfigsCC %
.CC% &
PortCC& *
=CC+ ,

newDetailsCC- 7
.CC7 8
PortCC8 <
;CC< =
ServerConfigsDD %
.DD% &
isHTTPSDD& -
=DD. /

newDetailsDD0 :
.DD: ;
isHTTPSDD; B
;DDB C
awaitGG 
DisplayAlertGG *
(GG* +
$strGG+ 4
,GG4 5
$strGG6 i
,GGi j
$strGGk q
)GGq r
;GGr s
awaitII 

NavigationII (
.II( )
PopAsyncII) 1
(II1 2
)II2 3
;II3 4
}JJ 
catchKK 
(KK 
	ExceptionKK $
exKK% '
)KK' (
{LL 
}NN 
finallyOO 
{PP 
thisQQ 
.QQ 
IsBusyQQ #
=QQ$ %
falseQQ& +
;QQ+ ,
}RR 
}SS 
elseTT 
{UU 
awaitVV 
DisplayAlertVV &
(VV& '
$strVV' 9
,VV9 :
$str	VV; ë
,
VVë í
$str
VVì ô
)
VVô ö
;
VVö õ
}WW 
}XX 
}YY 	
}ZZ 
}[[ ‡å
dC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\PendingSignPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions (
.( )
Compile) 0
)0 1
]1 2
public 
partial 
class 
PendingSignPage %
:& '
ContentPage( 3
{  
PendingSignViewModel 
	viewModel &
;& '$
PendingSignEntityService  
service! (
;( )
WorkOrderService 
	woService "
;" #
WorkOrderStatus 
woStatus  
;  !
public 
PendingSignPage 
(   
PendingSignViewModel  4
	viewModel5 >
,> ?
WorkOrderStatus@ O
woStatusP X
)X Y
{ 
InitializeComponent   
(   
)   
;   
service"" 
="" 
new"" $
PendingSignEntityService"" 2
(""2 3
)""3 4
;""4 5
	woService$$ 
=$$ 
new$$ 
WorkOrderService$$ ,
($$, -
)$$- .
;$$. /
this&& 
.&& 
woStatus&& 
=&& 
woStatus&& $
;&&$ %
if(( 
(((  
StaticWorkOrderModel(( #
.((# $
PendingSign(($ /
==((0 2
null((3 7
)((7 8
{)) 
BindingContext** 
=**  
this**! %
.**% &
	viewModel**& /
=**0 1
	viewModel**2 ;
;**; <
}++ 
else,, 
{-- 
BindingContext.. 
=..  
this..! %
...% &
	viewModel..& /
=..0 1 
StaticWorkOrderModel..2 F
...F G
PendingSign..G R
;..R S
}// 
	viewModel11 
.11 
btnComplete11 !
=11" #
btnComplete11$ /
;11/ 0
	viewModel22 
.22 
btnSignature22 "
=22# $
btnSignature22% 1
;221 2
	viewModel33 
.33 
btnSnapshot33 !
=33" #
btnSnapShot33$ /
;33/ 0
if55 
(55 
	viewModel55 
.55 
ServiceJobStatus55 )
==55* ,%
ServiceJobStatusConstants55- F
.55F G
SeviceJobStatus55G V
.55V W
	Submitted55W `
.55` a
ToString55a i
(55i j
)55j k
)55k l
{66 
Submitted_State77 
(77  
)77  !
;77! "
}88 
else99 
{:: 
if;; 
(;; 
	viewModel;; 
.;; 
	WorkOrder;; '
.;;' (
WorkOrderId;;( 3
==;;4 6
woStatus;;7 ?
.;;? @
WorkOrderId;;@ K
);;K L
{<< 
if== 
(== 
woStatus==  
.==  !
isSignedByCustomer==! 3
)==3 4
{>> 
PostSign_State?? &
(??& '
)??' (
;??( )
}@@ 
}AA 
elseBB 
{CC 
PreSign_StateDD !
(DD! "
)DD" #
;DD# $
}EE 
}FF 
}GG 	
	protectedII 
asyncII 
overrideII  
voidII! %
OnAppearingII& 1
(II1 2
)II2 3
{JJ 	
baseKK 
.KK 
OnAppearingKK 
(KK 
)KK 
;KK 
ifMM 
(MM 
CrossConnectivityMM !
.MM! "
CurrentMM" )
.MM) *
IsConnectedMM* 5
)MM5 6
{NN 
Loading_StateOO 
(OO 
trueOO "
)OO" #
;OO# $
ifQQ 
(QQ  
StaticWorkOrderModelQQ (
.QQ( )
PendingSignQQ) 4
==QQ5 7
nullQQ8 <
)QQ< =
{RR 
ifSS 
(SS 
!SS 
(SS 
	viewModelSS "
.SS" #

ChecklistsSS# -
.SS- .
CountSS. 3
>SS4 5
$numSS6 7
&&SS8 :
	viewModelSS; D
.SSD E
MeetingServicesSSE T
.SST U
CountSSU Z
>SS[ \
$numSS] ^
)SS^ _
)SS_ `
{TT 
awaitUU 
	viewModelUU '
.UU' ((
ExecuteLoadReferencesCommandUU( D
(UUD E
)UUE F
;UUF G
}VV  
StaticWorkOrderModelXX (
.XX( )
PendingSignXX) 4
=XX5 6
thisXX7 ;
.XX; <
	viewModelXX< E
;XXE F
}YY 
elseZZ 
{[[ 
	viewModel\\ 
=\\  
StaticWorkOrderModel\\  4
.\\4 5
PendingSign\\5 @
;\\@ A
}]] 
if__ 
(__ 
	viewModel__ 
.__ 
ServiceJobStatus__ .
==__/ 1%
ServiceJobStatusConstants__2 K
.__K L
SeviceJobStatus__L [
.__[ \
	Submitted__\ e
.__e f
ToString__f n
(__n o
)__o p
)__p q
{`` 
Submitted_Stateaa #
(aa# $
)aa$ %
;aa% &
}bb 
elsecc 
{dd 
woStatusee 
=ee 
awaitee $
Appee% (
.ee( )
woStatusRepoee) 5
.ee5 6'
GetWorkOrderStatusByIdAsyncee6 Q
(eeQ R
	viewModeleeR [
.ee[ \
	WorkOrderee\ e
.eee f
WorkOrderIdeef q
,eeq r
	viewModelees |
.ee| }
	WorkOrder	ee} Ü
.
eeÜ á
ServiceJobId
eeá ì
)
eeì î
;
eeî ï
ifgg 
(gg 
woStatusgg  
.gg  !
isSignedByCustomergg! 3
)gg3 4
{hh 
PostSign_Stateii &
(ii& '
)ii' (
;ii( )
}jj 
elsekk 
{ll 
PreSign_Statemm %
(mm% &
)mm& '
;mm' (
}nn 
}oo 
lblPickUpPaxqq 
.qq 
Textqq !
=qq" #
Stringqq$ *
.qq* +
IsNullOrEmptyqq+ 8
(qq8 9
woStatusqq9 A
.qqA B
	PickUpPaxqqB K
)qqK L
?qqM N
$strqqO R
:qqS T
woStatusqqU ]
.qq] ^
	PickUpPaxqq^ g
;qqg h"
CheckListItemsListViewss &
.ss& '
HeightRequestss' 4
=ss5 6
$numss7 9
*ss: ;
	viewModelss< E
.ssE F

ChecklistsssF P
.ssP Q
CountssQ V
;ssV W'
MeetingServiceItemsListViewtt +
.tt+ ,
HeightRequesttt, 9
=tt: ;
$numtt< >
*tt? @
	viewModelttA J
.ttJ K
MeetingServicesttK Z
.ttZ [
Counttt[ `
;tt` a
Loading_Statevv 
(vv 
falsevv #
)vv# $
;vv$ %
}ww 
elsexx 
{yy 
awaitzz 
DisplayAlertzz "
(zz" #
$strzz# 5
,zz5 6
$str	zz7 ç
,
zzç é
$str
zzè ï
)
zzï ñ
;
zzñ ó
}{{ 
}|| 	
private~~ 
async~~ 
void~~ $
SnapShotButton_OnClicked~~ 3
(~~3 4
object~~4 :
sender~~; A
,~~A B
	EventArgs~~C L
e~~M N
)~~N O
{ 	
btnSnapShot
ÄÄ 
.
ÄÄ 
	IsEnabled
ÄÄ !
=
ÄÄ" #
false
ÄÄ$ )
;
ÄÄ) *"
StaticWorkOrderModel
ÇÇ  
.
ÇÇ  !
PendingSign
ÇÇ! ,
=
ÇÇ- .
	viewModel
ÇÇ/ 8
;
ÇÇ8 9
string
ÑÑ 
	photoDesc
ÑÑ 
=
ÑÑ 
DateTime
ÑÑ '
.
ÑÑ' (
Now
ÑÑ( +
.
ÑÑ+ ,
ToLongDateString
ÑÑ, <
(
ÑÑ< =
)
ÑÑ= >
;
ÑÑ> ?
var
ÜÜ 
status
ÜÜ 
=
ÜÜ 
await
ÜÜ 
CrossPermissions
ÜÜ /
.
ÜÜ/ 0
Current
ÜÜ0 7
.
ÜÜ7 8(
CheckPermissionStatusAsync
ÜÜ8 R
(
ÜÜR S

Permission
ÜÜS ]
.
ÜÜ] ^
Camera
ÜÜ^ d
)
ÜÜd e
;
ÜÜe f
if
àà 
(
àà 
status
àà 
!=
àà 
PermissionStatus
àà *
.
àà* +
Granted
àà+ 2
)
àà2 3
{
ââ 
if
ää 
(
ää 
await
ää 
CrossPermissions
ää *
.
ää* +
Current
ää+ 2
.
ää2 37
)ShouldShowRequestPermissionRationaleAsync
ää3 \
(
ää\ ]

Permission
ää] g
.
ääg h
Camera
ääh n
)
ään o
)
ääo p
{
ãã 
}
çç 
var
èè 
results
èè 
=
èè 
await
èè #
CrossPermissions
èè$ 4
.
èè4 5
Current
èè5 <
.
èè< =%
RequestPermissionsAsync
èè= T
(
èèT U

Permission
èèU _
.
èè_ `
Camera
èè` f
)
èèf g
;
èèg h
if
ëë 
(
ëë 
results
ëë 
.
ëë 
ContainsKey
ëë '
(
ëë' (

Permission
ëë( 2
.
ëë2 3
Camera
ëë3 9
)
ëë9 :
)
ëë: ;
status
íí 
=
íí 
results
íí $
[
íí$ %

Permission
íí% /
.
íí/ 0
Camera
íí0 6
]
íí6 7
;
íí7 8
}
ìì 
if
ïï 
(
ïï 
status
ïï 
==
ïï 
PermissionStatus
ïï *
.
ïï* +
Granted
ïï+ 2
)
ïï2 3
{
ññ 
if
òò 
(
òò 
!
òò 
(
òò 

CrossMedia
òò  
.
òò  !
Current
òò! (
.
òò( )
IsCameraAvailable
òò) :
&&
òò; =

CrossMedia
òò> H
.
òòH I
Current
òòI P
.
òòP Q"
IsTakePhotoSupported
òòQ e
)
òòe f
)
òòf g
{
ôô 
await
öö 
DisplayAlert
öö &
(
öö& '
$str
öö' 2
,
öö2 3
$str
öö4 M
,
ööM N
$str
ööO S
)
ööS T
;
ööT U
return
õõ 
;
õõ 
}
úú 
var
ûû 
file
ûû 
=
ûû 
await
ûû  

CrossMedia
ûû! +
.
ûû+ ,
Current
ûû, 3
.
ûû3 4
TakePhotoAsync
ûû4 B
(
ûûB C
new
ûûC F%
StoreCameraMediaOptions
ûûG ^
(
ûû^ _
)
ûû_ `
{
üü 
	PhotoSize
†† 
=
†† 
Plugin
††  &
.
††& '
Media
††' ,
.
††, -
Abstractions
††- 9
.
††9 :
	PhotoSize
††: C
.
††C D
Medium
††D J
,
††J K
DefaultCamera
°° !
=
°°" #
CameraDevice
°°$ 0
.
°°0 1
Rear
°°1 5
,
°°5 6
SaveToAlbum
¢¢ 
=
¢¢  !
false
¢¢" '
,
¢¢' (
Name
££ 
=
££ 
	photoDesc
££ $
}
§§ 
)
§§ 
;
§§ 
if
¶¶ 
(
¶¶ 
file
¶¶ 
==
¶¶ 
null
¶¶  
)
¶¶  !
{
ßß 
btnSnapShot
®® 
.
®®  
	IsEnabled
®®  )
=
®®* +
true
®®, 0
;
®®0 1
return
©© 
;
©© 
}
™™ 
await
¨¨ 

Navigation
¨¨  
.
¨¨  !
	PushAsync
¨¨! *
(
¨¨* +
new
¨¨+ .
SnapShotPage
¨¨/ ;
(
¨¨; <
(
¨¨< =
Convert
¨¨= D
.
¨¨D E
ToInt64
¨¨E L
(
¨¨L M
lblServiceJobId
¨¨M \
.
¨¨\ ]
Text
¨¨] a
)
¨¨a b
)
¨¨b c
,
¨¨c d
file
¨¨e i
)
¨¨i j
)
¨¨j k
;
¨¨k l
}
≠≠ 
else
ÆÆ 
if
ÆÆ 
(
ÆÆ 
status
ÆÆ 
!=
ÆÆ 
PermissionStatus
ÆÆ /
.
ÆÆ/ 0
Unknown
ÆÆ0 7
)
ÆÆ7 8
{
ØØ 
await
∞∞ 
DisplayAlert
∞∞ "
(
∞∞" #
$str
∞∞# 2
,
∞∞2 3
$str
∞∞4 R
,
∞∞R S
$str
∞∞T X
)
∞∞X Y
;
∞∞Y Z
}
±± 
btnSnapShot
≥≥ 
.
≥≥ 
	IsEnabled
≥≥ !
=
≥≥" #
true
≥≥$ (
;
≥≥( )
}
¥¥ 	
private
∂∂ 
async
∂∂ 
void
∂∂ "
SignButton_OnClicked
∂∂ /
(
∂∂/ 0
object
∂∂0 6
sender
∂∂7 =
,
∂∂= >
	EventArgs
∂∂? H
e
∂∂I J
)
∂∂J K
{
∑∑ 	
btnSignature
∏∏ 
.
∏∏ 
	IsEnabled
∏∏ "
=
∏∏# $
false
∏∏% *
;
∏∏* +"
StaticWorkOrderModel
∫∫  
.
∫∫  !
PendingSign
∫∫! ,
=
∫∫- .
	viewModel
∫∫/ 8
;
∫∫8 9
this
ºº 
.
ºº 
	viewModel
ºº 
.
ºº 
IsBusy
ºº !
=
ºº" #
true
ºº$ (
;
ºº( )
	WorkOrder
ææ 
workOrderEntity
ææ %
=
ææ& '
await
ææ( -
	woService
ææ. 7
.
ææ7 8
GetOrderBySJId
ææ8 F
(
ææF G
this
ææG K
.
ææK L
	viewModel
ææL U
.
ææU V
	WorkOrder
ææV _
.
ææ_ `
ServiceJobId
ææ` l
)
ææl m
;
ææm n
if
¿¿ 
(
¿¿ 
workOrderEntity
¿¿ 
==
¿¿ !
null
¿¿" &
)
¿¿& '
{
¡¡ 
await
¬¬ 
DisplayAlert
¬¬ "
(
¬¬" #
$str
¬¬# ,
,
¬¬, -
$str
¬¬. W
,
¬¬W X
$str
¬¬Y ]
)
¬¬] ^
;
¬¬^ _
return
√√ 
;
√√ 
}
ƒƒ 
this
∆∆ 
.
∆∆ 
	viewModel
∆∆ 
.
∆∆ 
IsBusy
∆∆ !
=
∆∆" #
false
∆∆$ )
;
∆∆) *
await
»» 

Navigation
»» 
.
»» 
	PushAsync
»» &
(
»»& '
new
»»' *
SignaturePage
»»+ 8
(
»»8 9
workOrderEntity
»»9 H
)
»»H I
)
»»I J
;
»»J K
btnSignature
   
.
   
	IsEnabled
   "
=
  # $
true
  % )
;
  ) *
}
ÀÀ 	
private
ÕÕ 
async
ÕÕ 
void
ÕÕ &
CompleteButton_OnClicked
ÕÕ 3
(
ÕÕ3 4
object
ÕÕ4 :
sender
ÕÕ; A
,
ÕÕA B
	EventArgs
ÕÕC L
e
ÕÕM N
)
ÕÕN O
{
ŒŒ 	
Loading_State
œœ 
(
œœ 
true
œœ 
)
œœ 
;
œœ  
if
—— 
(
—— 
CrossConnectivity
—— !
.
——! "
Current
——" )
.
——) *
IsConnected
——* 5
)
——5 6
{
““ 
if
”” 
(
”” 
await
”” 
ValidateData
”” %
(
””% &
)
””& '
)
””' (
{
‘‘ 
var
’’ 
confirm
’’ 
=
’’  !
await
’’" '
DisplayAlert
’’( 4
(
’’4 5
$str
’’5 >
,
’’> ?
$str
’’@ ~
,
’’~ 
$str’’Ä Ö
,’’Ö Ü
$str’’á ã
)’’ã å
;’’å ç
if
◊◊ 
(
◊◊ 
confirm
◊◊ 
)
◊◊  
{
ÿÿ 
this
ŸŸ 
.
ŸŸ 
	viewModel
ŸŸ &
.
ŸŸ& '
IsBusy
ŸŸ' -
=
ŸŸ. /
true
ŸŸ0 4
;
ŸŸ4 5(
CompletedPendingSignEntity
€€ 2
model
€€3 8
=
€€9 :
new
€€; >(
CompletedPendingSignEntity
€€? Y
(
€€Y Z
)
€€Z [
;
€€[ \
model
›› 
.
›› 
serviceJobId
›› *
=
››+ ,
lblServiceJobId
››- <
.
››< =
Text
››= A
;
››A B
List
ﬂﬂ 
<
ﬂﬂ #
CheckListHelperEntity
ﬂﬂ 2
>
ﬂﬂ2 3

checklists
ﬂﬂ4 >
=
ﬂﬂ? @
	viewModel
ﬂﬂA J
.
ﬂﬂJ K

Checklists
ﬂﬂK U
.
ﬂﬂU V
Where
ﬂﬂV [
(
ﬂﬂ[ \
x
ﬂﬂ\ ]
=>
ﬂﬂ^ `
x
ﬂﬂa b
.
ﬂﬂb c
Selected
ﬂﬂc k
)
ﬂﬂk l
.
ﬂﬂl m
ToList
ﬂﬂm s
(
ﬂﬂs t
)
ﬂﬂt u
;
ﬂﬂu v
foreach
‡‡ 
(
‡‡  !
var
‡‡! $
chkItem
‡‡% ,
in
‡‡- /

checklists
‡‡0 :
)
‡‡: ;
{
·· 
model
‚‚ !
.
‚‚! "
checklistIds
‚‚" .
+=
‚‚/ 1
chkItem
‚‚2 9
.
‚‚9 :
Id
‚‚: <
.
‚‚< =
ToString
‚‚= E
(
‚‚E F
)
‚‚F G
;
‚‚G H
if
‰‰ 
(
‰‰  
string
‰‰  &
.
‰‰& '
IsNullOrEmpty
‰‰' 4
(
‰‰4 5
chkItem
‰‰5 <
.
‰‰< =

ShortText9
‰‰= G
)
‰‰G H
)
‰‰H I
{
ÂÂ 
chkItem
ÊÊ  '
.
ÊÊ' (

ShortText9
ÊÊ( 2
=
ÊÊ3 4
$str
ÊÊ5 8
;
ÊÊ8 9
}
ÁÁ 
model
ÈÈ !
.
ÈÈ! "
checklistIds
ÈÈ" .
+=
ÈÈ/ 1
$str
ÈÈ2 5
+
ÈÈ6 7
chkItem
ÈÈ8 ?
.
ÈÈ? @

ShortText9
ÈÈ@ J
+
ÈÈK L
$str
ÈÈM P
;
ÈÈP Q
}
ÍÍ 
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
(
ÏÏ 
model
ÏÏ #
.
ÏÏ# $
checklistIds
ÏÏ$ 0
==
ÏÏ1 3
$str
ÏÏ4 6
)
ÏÏ6 7
)
ÏÏ7 8
model
ÌÌ !
.
ÌÌ! "
checklistIds
ÌÌ" .
=
ÌÌ/ 0
model
ÌÌ1 6
.
ÌÌ6 7
checklistIds
ÌÌ7 C
.
ÌÌC D
	Substring
ÌÌD M
(
ÌÌM N
$num
ÌÌN O
,
ÌÌO P
model
ÌÌQ V
.
ÌÌV W
checklistIds
ÌÌW c
.
ÌÌc d
Length
ÌÌd j
-
ÌÌk l
$num
ÌÌm n
)
ÌÌn o
;
ÌÌo p
model
ÔÔ 
.
ÔÔ 
additionalStops
ÔÔ -
=
ÔÔ. / 
txtAdditionalStops
ÔÔ0 B
.
ÔÔB C
Text
ÔÔC G
;
ÔÔG H
model
ÒÒ 
.
ÒÒ 
	disposals
ÒÒ '
=
ÒÒ( )
txtDisposal
ÒÒ* 5
.
ÒÒ5 6
Text
ÒÒ6 :
;
ÒÒ: ;
model
ÛÛ 
.
ÛÛ 
waitingTime
ÛÛ )
=
ÛÛ* +
txtWaitingTime
ÛÛ, :
.
ÛÛ: ;
Text
ÛÛ; ?
;
ÛÛ? @
List
ıı 
<
ıı 
PendingSignEntity
ıı .
>
ıı. /
meetingServices
ıı0 ?
=
ıı@ A
	viewModel
ııB K
.
ııK L
MeetingServices
ııL [
.
ıı[ \
ToList
ıı\ b
(
ııb c
)
ııc d
.
ııd e
Where
ııe j
(
ııj k
x
ıık l
=>
ıım o
x
ııp q
.
ııq r
Selected
ıır z
==
ıı{ }
trueıı~ Ç
)ııÇ É
.ııÉ Ñ
ToListııÑ ä
(ııä ã
)ııã å
;ııå ç
foreach
ˆˆ 
(
ˆˆ  !
var
ˆˆ! $
msItem
ˆˆ% +
in
ˆˆ, .
meetingServices
ˆˆ/ >
)
ˆˆ> ?
{
˜˜ 
model
¯¯ !
.
¯¯! "
meetingServiceIds
¯¯" 3
+=
¯¯4 6
msItem
¯¯7 =
.
¯¯= >
Id
¯¯> @
.
¯¯@ A
ToString
¯¯A I
(
¯¯I J
)
¯¯J K
+
¯¯L M
$str
¯¯N Q
;
¯¯Q R
}
˘˘ 
if
˙˙ 
(
˙˙ 
!
˙˙ 
(
˙˙ 
model
˙˙ #
.
˙˙# $
meetingServiceIds
˙˙$ 5
==
˙˙6 8
$str
˙˙9 ;
)
˙˙; <
)
˙˙< =
{
˚˚ 
model
¸¸ !
.
¸¸! "
meetingServiceIds
¸¸" 3
=
¸¸4 5
model
¸¸6 ;
.
¸¸; <
meetingServiceIds
¸¸< M
.
¸¸M N
	Substring
¸¸N W
(
¸¸W X
$num
¸¸X Y
,
¸¸Y Z
model
¸¸[ `
.
¸¸` a
meetingServiceIds
¸¸a r
.
¸¸r s
Length
¸¸s y
-
¸¸z {
$num
¸¸| }
)
¸¸} ~
;
¸¸~ 
}
˝˝ 
var
ˇˇ 
	detention
ˇˇ %
=
ˇˇ& '
pickerDetention
ˇˇ( 7
.
ˇˇ7 8
SelectedItem
ˇˇ8 D
as
ˇˇE G
PendingSignEntity
ˇˇH Y
;
ˇˇY Z
var
ÄÄ 
detentionId
ÄÄ '
=
ÄÄ( )
	detention
ÄÄ* 3
==
ÄÄ4 6
null
ÄÄ7 ;
?
ÄÄ< =
$num
ÄÄ> ?
:
ÄÄ@ A
	detention
ÄÄB K
.
ÄÄK L
Id
ÄÄL N
;
ÄÄN O
model
ÅÅ 
.
ÅÅ 
customDetentionId
ÅÅ /
=
ÅÅ0 1
detentionId
ÅÅ2 =
.
ÅÅ= >
ToString
ÅÅ> F
(
ÅÅF G
)
ÅÅG H
;
ÅÅH I
model
ÉÉ 
.
ÉÉ 
remark
ÉÉ $
=
ÉÉ% &
	txtRemark
ÉÉ' 0
.
ÉÉ0 1
Text
ÉÉ1 5
;
ÉÉ5 6
model
ÖÖ 
.
ÖÖ 
	pickupPax
ÖÖ '
=
ÖÖ( )
lblPickUpPax
ÖÖ* 6
.
ÖÖ6 7
Text
ÖÖ7 ;
;
ÖÖ; <
model
áá 
.
áá 
tripFees
áá &
=
áá' (
Convert
áá) 0
.
áá0 1
	ToDecimal
áá1 :
(
áá: ;
txtTripFees
áá; F
.
ááF G
Text
ááG K
)
ááK L
;
ááL M
model
àà 
.
àà 
isMSIncluded
àà *
=
àà+ ,
swtMS
àà- 2
.
àà2 3
	IsToggled
àà3 <
;
àà< =
if
ää 
(
ää 
await
ää !
service
ää" )
.
ää) *
Save
ää* .
(
ää. /
model
ää/ 4
)
ää4 5
)
ää5 6
{
ãã "
StaticWorkOrderModel
åå 0
.
åå0 1

ResetModel
åå1 ;
(
åå; <
)
åå< =
;
åå= >
this
éé  
.
éé  !
	viewModel
éé! *
.
éé* +
IsBusy
éé+ 1
=
éé2 3
false
éé4 9
;
éé9 :
woStatus
íí $
=
íí% &
await
íí' ,
App
íí- 0
.
íí0 1
woStatusRepo
íí1 =
.
íí= >)
GetWorkOrderStatusByIdAsync
íí> Y
(
ííY Z
this
ííZ ^
.
íí^ _
	viewModel
íí_ h
.
ííh i
	WorkOrder
ííi r
.
íír s
WorkOrderId
íís ~
,
íí~ 
thisííÄ Ñ
.ííÑ Ö
	viewModelííÖ é
.ííé è
	WorkOrderííè ò
.ííò ô
ServiceJobIdííô •
)íí• ¶
;íí¶ ß
woStatus
ìì $
.
ìì$ % 
WorkOrderStatusStr
ìì% 7
=
ìì8 9&
WorkOrderStatusConstants
ìì: R
.
ììR S
OrderStatus
ììS ^
.
ìì^ _
	Submitted
ìì_ h
.
ììh i
ToString
ììi q
(
ììq r
)
ììr s
;
ììs t
woStatus
îî $
.
îî$ %!
ServiceJobStatusStr
îî% 8
=
îî9 :'
ServiceJobStatusConstants
îî; T
.
îîT U
SeviceJobStatus
îîU d
.
îîd e
	Submitted
îîe n
.
îîn o
ToString
îîo w
(
îîw x
)
îîx y
;
îîy z
await
ïï !
App
ïï" %
.
ïï% &
woStatusRepo
ïï& 2
.
ïï2 3(
UpdateWorkOrderStatusAsync
ïï3 M
(
ïïM N
woStatus
ïïN V
)
ïïV W
;
ïïW X
await
òò !

Navigation
òò" ,
.
òò, -
	PushAsync
òò- 6
(
òò6 7
new
òò7 :
MainPage
òò; C
(
òòC D
)
òòD E
)
òòE F
;
òòF G
}
ôô 
else
öö 
{
õõ 
this
úú  
.
úú  !
	viewModel
úú! *
.
úú* +
IsBusy
úú+ 1
=
úú2 3
false
úú4 9
;
úú9 :
await
ûû !
DisplayAlert
ûû" .
(
ûû. /
$str
ûû/ 7
,
ûû7 8
$strûû9 Ä
,ûûÄ Å
$strûûÇ à
)ûûà â
;ûûâ ä
}
üü 
}
†† 
Loading_State
¢¢ !
(
¢¢! "
false
¢¢" '
)
¢¢' (
;
¢¢( )
Submitted_State
££ #
(
££# $
)
££$ %
;
££% &
}
§§ 
else
•• 
{
¶¶ 
Loading_State
ßß !
(
ßß! "
false
ßß" '
)
ßß' (
;
ßß( )
}
®® 
}
©© 
else
™™ 
{
´´ 
await
¨¨ 
DisplayAlert
¨¨ "
(
¨¨" #
$str
¨¨# 5
,
¨¨5 6
$str¨¨7 ç
,¨¨ç é
$str¨¨è ï
)¨¨ï ñ
;¨¨ñ ó
}
≠≠ 
}
ÆÆ 	
private
∞∞ 
async
∞∞ 
Task
∞∞ 
<
∞∞ 
bool
∞∞ 
>
∞∞  
ValidateData
∞∞! -
(
∞∞- .
)
∞∞. /
{
±± 	
var
≤≤ 
emptyChecklists
≤≤ 
=
≤≤  !
this
≤≤" &
.
≤≤& '
	viewModel
≤≤' 0
.
≤≤0 1

Checklists
≤≤1 ;
.
≤≤; <
Where
≤≤< A
(
≤≤A B
x
≤≤B C
=>
≤≤D F
x
≤≤G H
.
≤≤H I
Selected
≤≤I Q
&&
≤≤R T
string
≤≤U [
.
≤≤[ \
IsNullOrEmpty
≤≤\ i
(
≤≤i j
x
≤≤j k
.
≤≤k l

ShortText9
≤≤l v
)
≤≤v w
)
≤≤w x
;
≤≤x y
if
¥¥ 
(
¥¥ 
emptyChecklists
¥¥ 
.
¥¥ 
Count
¥¥ $
(
¥¥$ %
)
¥¥% &
>
¥¥' (
$num
¥¥) *
)
¥¥* +
{
µµ 
await
∂∂ 
DisplayAlert
∂∂ "
(
∂∂" #
$str
∂∂# -
,
∂∂- .
$str
∂∂/ e
,
∂∂e f
$str
∂∂g m
)
∂∂m n
;
∂∂n o
return
∑∑ 
false
∑∑ 
;
∑∑ 
}
∏∏ 
var
∫∫ 
enteredChecklists
∫∫ !
=
∫∫" #
this
∫∫$ (
.
∫∫( )
	viewModel
∫∫) 2
.
∫∫2 3

Checklists
∫∫3 =
.
∫∫= >
Where
∫∫> C
(
∫∫C D
x
∫∫D E
=>
∫∫F H
x
∫∫I J
.
∫∫J K
Selected
∫∫K S
&&
∫∫T V
!
∫∫W X
string
∫∫X ^
.
∫∫^ _
IsNullOrEmpty
∫∫_ l
(
∫∫l m
x
∫∫m n
.
∫∫n o

ShortText9
∫∫o y
)
∫∫y z
)
∫∫z {
;
∫∫{ |
if
ºº 
(
ºº 
enteredChecklists
ºº  
.
ºº  !
Count
ºº! &
(
ºº& '
)
ºº' (
>
ºº) *
$num
ºº+ ,
)
ºº, -
{
ΩΩ 
bool
ææ 
isValidEntry
ææ !
=
ææ" #
true
ææ$ (
;
ææ( )
foreach
¿¿ 
(
¿¿ 
var
¿¿ 
	checklist
¿¿ %
in
¿¿& (
enteredChecklists
¿¿) :
)
¿¿: ;
{
¡¡ 
var
¬¬ 
	isDecimal
¬¬ !
=
¬¬" #
decimal
¬¬$ +
.
¬¬+ ,
TryParse
¬¬, 4
(
¬¬4 5
	checklist
¬¬5 >
.
¬¬> ?

ShortText9
¬¬? I
,
¬¬I J
out
¬¬K N
decimal
¬¬O V
checklistPrice
¬¬W e
)
¬¬e f
;
¬¬f g
if
ƒƒ 
(
ƒƒ 
	isDecimal
ƒƒ  
)
ƒƒ  !
{
≈≈ 
if
∆∆ 
(
∆∆ 
checklistPrice
∆∆ )
==
∆∆* ,
$num
∆∆- .
)
∆∆. /
{
«« 
await
»» !
DisplayAlert
»»" .
(
»». /
$str
»»/ 8
,
»»8 9
$str
»»: `
,
»»` a
$str
»»b h
)
»»h i
;
»»i j
return
…… "
false
……# (
;
……( )
}
   
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
await
ŒŒ 
DisplayAlert
ŒŒ *
(
ŒŒ* +
$str
ŒŒ+ 4
,
ŒŒ4 5
$str
ŒŒ6 M
,
ŒŒM N
$str
ŒŒO U
)
ŒŒU V
;
ŒŒV W
return
œœ 
false
œœ $
;
œœ$ %
}
–– 
}
—— 
}
““ 
if
‘‘ 
(
‘‘ 
string
‘‘ 
.
‘‘ 
IsNullOrEmpty
‘‘ #
(
‘‘# $
txtTripFees
‘‘$ /
.
‘‘/ 0
Text
‘‘0 4
)
‘‘4 5
)
‘‘5 6
{
’’ 
await
÷÷ 
DisplayAlert
÷÷ "
(
÷÷" #
$str
÷÷# -
,
÷÷- .
$str
÷÷/ N
,
÷÷N O
$str
÷÷P V
)
÷÷V W
;
÷÷W X
return
◊◊ 
false
◊◊ 
;
◊◊ 
}
ÿÿ 
var
⁄⁄ 
isTripFeesDecimal
⁄⁄ !
=
⁄⁄" #
decimal
⁄⁄$ +
.
⁄⁄+ ,
TryParse
⁄⁄, 4
(
⁄⁄4 5
txtTripFees
⁄⁄5 @
.
⁄⁄@ A
Text
⁄⁄A E
,
⁄⁄E F
out
⁄⁄G J
decimal
⁄⁄K R
tripFeePrice
⁄⁄S _
)
⁄⁄_ `
;
⁄⁄` a
if
‹‹ 
(
‹‹ 
isTripFeesDecimal
‹‹  
)
‹‹  !
{
›› 
if
ﬁﬁ 
(
ﬁﬁ 
tripFeePrice
ﬁﬁ  
==
ﬁﬁ! #
$num
ﬁﬁ$ %
)
ﬁﬁ% &
{
ﬂﬂ 
await
‡‡ 
DisplayAlert
‡‡ &
(
‡‡& '
$str
‡‡' 0
,
‡‡0 1
$str
‡‡2 M
,
‡‡M N
$str
‡‡O U
)
‡‡U V
;
‡‡V W
return
·· 
false
··  
;
··  !
}
‚‚ 
}
„„ 
else
‰‰ 
{
ÂÂ 
await
ÊÊ 
DisplayAlert
ÊÊ "
(
ÊÊ" #
$str
ÊÊ# ,
,
ÊÊ, -
$str
ÊÊ. E
,
ÊÊE F
$str
ÊÊG M
)
ÊÊM N
;
ÊÊN O
return
ÁÁ 
false
ÁÁ 
;
ÁÁ 
}
ËË 
return
ÍÍ 
true
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ 
Loading_State
ÌÌ "
(
ÌÌ" #
bool
ÌÌ# '
	isLoading
ÌÌ( 1
)
ÌÌ1 2
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 
	isLoading
ÔÔ 
)
ÔÔ 
{
 
btnSignature
ÒÒ 
.
ÒÒ 
	IsEnabled
ÒÒ &
=
ÒÒ' (
false
ÒÒ) .
;
ÒÒ. /
btnComplete
ÚÚ 
.
ÚÚ 
	IsEnabled
ÚÚ %
=
ÚÚ& '
false
ÚÚ( -
;
ÚÚ- .
btnSnapShot
ÛÛ 
.
ÛÛ 
	IsEnabled
ÛÛ %
=
ÛÛ& '
false
ÛÛ( -
;
ÛÛ- .
}
ÙÙ 
else
ıı 
{
ˆˆ 
btnSignature
˜˜ 
.
˜˜ 
	IsEnabled
˜˜ &
=
˜˜' (
true
˜˜) -
;
˜˜- .
btnComplete
¯¯ 
.
¯¯ 
	IsEnabled
¯¯ %
=
¯¯& '
true
¯¯( ,
;
¯¯, -
btnSnapShot
˘˘ 
.
˘˘ 
	IsEnabled
˘˘ %
=
˘˘& '
true
˘˘( ,
;
˘˘, -
}
˙˙ 
}
˚˚ 	
private
˝˝ 
void
˝˝ 
PreSign_State
˝˝ "
(
˝˝" #
)
˝˝# $
{
˛˛ 	
btnSignature
ˇˇ 
.
ˇˇ 
	IsVisible
ˇˇ "
=
ˇˇ# $
true
ˇˇ% )
;
ˇˇ) *
	btnSigned
ÄÄ 
.
ÄÄ 
	IsVisible
ÄÄ 
=
ÄÄ  !
false
ÄÄ" '
;
ÄÄ' (
btnComplete
ÅÅ 
.
ÅÅ 
	IsVisible
ÅÅ !
=
ÅÅ" #
false
ÅÅ$ )
;
ÅÅ) *
btnSnapShot
ÇÇ 
.
ÇÇ 
	IsVisible
ÇÇ !
=
ÇÇ" #
true
ÇÇ$ (
;
ÇÇ( )
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ 
PostSign_State
ÖÖ #
(
ÖÖ# $
)
ÖÖ$ %
{
ÜÜ 	
btnSignature
áá 
.
áá 
	IsVisible
áá "
=
áá# $
false
áá% *
;
áá* +
	btnSigned
àà 
.
àà 
	IsVisible
àà 
=
àà  !
true
àà" &
;
àà& '
btnComplete
ââ 
.
ââ 
	IsVisible
ââ !
=
ââ" #
true
ââ$ (
;
ââ( )
btnSnapShot
ää 
.
ää 
	IsVisible
ää !
=
ää" #
true
ää$ (
;
ää( )
}
ãã 	
private
çç 
void
çç 
Submitted_State
çç $
(
çç$ %
)
çç% &
{
éé 	
btnSignature
èè 
.
èè 
	IsVisible
èè "
=
èè# $
false
èè% *
;
èè* +
btnSnapShot
êê 
.
êê 
	IsVisible
êê !
=
êê" #
false
êê$ )
;
êê) *
btnComplete
ëë 
.
ëë 
	IsVisible
ëë !
=
ëë" #
false
ëë$ )
;
ëë) *$
CheckListItemsListView
íí "
.
íí" #
	IsEnabled
íí# ,
=
íí- .
false
íí/ 4
;
íí4 5 
txtAdditionalStops
ìì 
.
ìì 
	IsEnabled
ìì (
=
ìì) *
false
ìì+ 0
;
ìì0 1
txtDisposal
îî 
.
îî 
	IsEnabled
îî !
=
îî" #
false
îî$ )
;
îî) *
txtWaitingTime
ïï 
.
ïï 
	IsEnabled
ïï $
=
ïï% &
false
ïï' ,
;
ïï, -)
MeetingServiceItemsListView
ññ '
.
ññ' (
	IsEnabled
ññ( 1
=
ññ2 3
false
ññ4 9
;
ññ9 :
pickerDetention
óó 
.
óó 
	IsEnabled
óó %
=
óó& '
false
óó( -
;
óó- .
	txtRemark
òò 
.
òò 
	IsEnabled
òò 
=
òò  !
false
òò" '
;
òò' (
}
ôô 	
}
öö 
}õõ €A
fC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\NotificationsPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions (
.( )
Compile) 0
)0 1
]1 2
public 
partial 
class 
NotificationsPage '
:( )
ContentPage* 5
{ &
NotificationsPageViewModel "
	viewModel# ,
;, -
NotificationService 
service #
;# $
WorkOrderService 
	woService "
;" #
WorkOrderStatus 
woStatus  
;  !
public 
NotificationsPage  
(! "
)" #
{ 
this 
. 
BindingContext 
=  !
	viewModel" +
=, -
new. 1&
NotificationsPageViewModel2 L
(L M
)M N
{ 
Title 
= 
$str ,
} 
; 
this!! 
.!! 
service!! 
=!! 
new!! 
NotificationService!! 2
(!!2 3
)!!3 4
;!!4 5
this"" 
."" 
	woService"" 
="" 
new""  
WorkOrderService""! 1
(""1 2
)""2 3
;""3 4
InitializeComponent$$ 
($$  !
)$$! "
;$$" #
}%% 
	protected'' 
override'' 
void'' 
OnAppearing''  +
(''+ ,
)'', -
{(( 	
base)) 
.)) 
OnAppearing)) 
()) 
))) 
;)) 
	viewModel++ 
.++ 
LoadItemsCommand++ &
=++' (
new++) ,
Command++- 4
(++4 5
async++5 :
(++; <
)++< =
=>++> @
await++A F
	viewModel++G P
.++P Q#
ExecuteLoadItemsCommand++Q h
(++h i
)++i j
)++j k
;++k l
	viewModel,, 
.,, 
LoadItemsCommand,, &
.,,& '
Execute,,' .
(,,. /
true,,/ 3
),,3 4
;,,4 5
}55 	
	protected77 
async77 
void77 $
AcknowledgeButtonClicked77 5
(775 6
object776 <
sender77= C
,77C D
	EventArgs77E N
e77O P
)77P Q
{88 	
try99 
{:: 
this;; 
.;; 
	viewModel;; 
.;; 
IsBusy;; %
=;;& '
true;;( ,
;;;, -
var==  
selectedNotification== (
===) *
	viewModel==+ 4
.==4 5
NotificationsList==5 F
.==F G
First==G L
(==L M
item==M Q
=>==R T
item>> 
.>> 
Id>> 
==>> 
int>> 
.>> 
Parse>> $
(>>$ %
(>>% &
sender>>& ,
as>>- /
Button>>0 6
)>>6 7
.>>7 8
CommandParameter>>8 H
.>>H I
ToString>>I Q
(>>Q R
)>>R S
)>>S T
)>>T U
;>>U V
var@@ 
result@@ 
=@@ 
await@@ "
service@@# *
.@@* +#
AcknowledgeNotification@@+ B
(@@B C 
selectedNotification@@C W
.@@W X
Id@@X Z
)@@Z [
;@@[ \
ifBB 
(BB  
selectedNotificationBB '
.BB' (
ReferenceIdBB( 3
!=BB4 6
$numBB7 8
)BB8 9
{CC 
	WorkOrderDD 
	workOrderDD '
=DD( )
awaitDD* /
	woServiceDD0 9
.DD9 :
GetOrderByWOIdDD: H
(DDH I 
selectedNotificationDDI ]
.DD] ^
ReferenceIdDD^ i
)DDi j
;DDj k
ifFF 
(FF 
	workOrderFF !
==FF" $
nullFF% )
||FF* ,
	workOrderFF- 6
.FF6 7
WorkOrderIdFF7 B
==FFC E
$numFFF G
)FFG H
{GG 
thisHH 
.HH 
	viewModelHH &
.HH& '
NotificationsListHH' 8
.HH8 9
RemoveHH9 ?
(HH? @ 
selectedNotificationHH@ T
)HHT U
;HHU V
returnII 
;II 
}JJ  
StaticWorkOrderModelLL (
.LL( )

ResetModelLL) 3
(LL3 4
)LL4 5
;LL5 6 
StaticWorkOrderModelNN (
.NN( )
	WorkOrderNN) 2
=NN3 4
	workOrderNN5 >
;NN> ?
woStatusQQ 
=QQ 
awaitQQ $
AppQQ% (
.QQ( )
woStatusRepoQQ) 5
.QQ5 6'
GetWorkOrderStatusByIdAsyncQQ6 Q
(QQQ R
	workOrderQQR [
.QQ[ \
WorkOrderIdQQ\ g
,QQg h
	workOrderQQi r
.QQr s
ServiceJobIdQQs 
)	QQ Ä
;
QQÄ Å
ifSS 
(SS 
woStatusSS  
==SS! #
nullSS$ (
)SS( )
{TT 
woStatusUU  
=UU! "
newUU# &
WorkOrderStatusUU' 6
(UU6 7
)UU7 8
{UU9 :
WorkOrderIdUU; F
=UUG H
	workOrderUUI R
.UUR S
WorkOrderIdUUS ^
,UU^ _
serviceJobIdUU` l
=UUm n
	workOrderUUo x
.UUx y
ServiceJobId	UUy Ö
,
UUÖ Ü 
isSignedByCustomer
UUá ô
=
UUö õ
false
UUú °
}
UU¢ £
;
UU£ §
awaitVV 
AppVV !
.VV! "
woStatusRepoVV" .
.VV. /#
AddWorkOrderStatusAsyncVV/ F
(VVF G
woStatusVVG O
)VVO P
;VVP Q
}WW 
woStatusYY 
.YY 
WorkOrderStatusStrYY /
=YY0 1
	workOrderYY2 ;
.YY; <
	StatusStrYY< E
;YYE F
woStatusZZ 
.ZZ 
ServiceJobStatusStrZZ 0
=ZZ1 2
	workOrderZZ3 <
.ZZ< =
ServiceJobStatusStrZZ= P
;ZZP Q
await\\ 
App\\ 
.\\ 
woStatusRepo\\ *
.\\* +&
UpdateWorkOrderStatusAsync\\+ E
(\\E F
woStatus\\F N
)\\N O
;\\O P
if^^ 
(^^ 
woStatus^^  
.^^  !
ServiceJobStatusStr^^! 4
==^^5 7%
ServiceJobStatusConstants^^8 Q
.^^Q R
SeviceJobStatus^^R a
.^^a b
Pending_Sign^^b n
.^^n o
ToString^^o w
(^^w x
)^^x y
)^^y z
{__ 
await`` 

Navigation`` (
.``( )
	PushAsync``) 2
(``2 3
new``3 6
PendingSignPage``7 F
(``F G
new``G J 
PendingSignViewModel``K _
(``_ `
	workOrder``` i
)``i j
,``j k
woStatus``l t
)``t u
)``u v
;``v w
}aa 
elsebb 
{cc 
awaitdd 

Navigationdd (
.dd( )
	PushAsyncdd) 2
(dd2 3
newdd3 6 
WorkOrderDetailsPagedd7 K
(ddK L
newddL O)
WorkOrderDetailsPageViewModelddP m
(ddm n
	workOrderddn w
)ddw x
,ddx y
woStatus	ddz Ç
)
ddÇ É
)
ddÉ Ñ
;
ddÑ Ö
}ee 
}ff 
thishh 
.hh 
	viewModelhh 
.hh 
NotificationsListhh 0
.hh0 1
Removehh1 7
(hh7 8 
selectedNotificationhh8 L
)hhL M
;hhM N
}ii 
catchjj 
(jj 
	Exceptionjj 
exjj 
)jj 
{kk 
awaitll 
DisplayAlertll "
(ll" #
$strll# ,
,ll, -
$strll. K
,llK L
$strllM Q
)llQ R
;llR S
}mm 
finallynn 
{oo 
thispp 
.pp 
	viewModelpp 
.pp 
IsBusypp %
=pp& '
falsepp( -
;pp- .
}qq 
}rr 	
}ss 
}tt ÊL
]C:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\MainPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions (
.( )
Compile) 0
)0 1
]1 2
public 
partial 
class 
MainPage 
:  
ContentPage! ,
{ 
MainPageViewModel 
	viewModel #
;# $
WorkOrderService 
	woService "
;" #
UserService 
userService 
;  
WorkOrderStatus 
woStatus  
;  !
public 
MainPage 
( 
) 
{ 
InitializeComponent 
( 
) 
; 
	woService 
= 
new 
WorkOrderService ,
(, -
)- .
;. /
userService   
=   
new   
UserService   )
(  ) *
)  * +
;  + ,
BindingContext"" 
="" 
	viewModel"" &
=""' (
new"") ,
MainPageViewModel""- >
(""> ?
)""? @
{## 
Title$$ 
=$$ 
$str$$ 
}%% 
;%% 
woStatus'' 
='' 
new'' 
WorkOrderStatus'' *
(''* +
)''+ ,
;'', -
}(( 	
	protected** 
override** 
void** 
OnAppearing**  +
(**+ ,
)**, -
{++ 	
base,, 
.,, 
OnAppearing,, 
(,, 
),, 
;,, 
	viewModel.. 
... !
LoadWorkOrdersCommand.. +
...+ ,
Execute.., 3
(..3 4
null..4 8
)..8 9
;..9 :

lstPending00 
.00 
HeightRequest00 $
=00% &
$num00' )
*00* +
	viewModel00, 5
.005 6
PendingTasks006 B
.00B C
Count00C H
;00H I
}22 	
private44 
async44 
void44 
LblPending_OnTapped44 .
(44. /
object44/ 5
sender446 <
,44< =
	EventArgs44> G
e44H I
)44I J
{55 	
if66 
(66 
CrossConnectivity66 !
.66! "
Current66" )
.66) *
IsConnected66* 5
)665 6
{77 
this88 
.88 
	viewModel88 
.88 
	IsPending88 (
=88) *
true88+ /
;88/ 0
	viewModel:: 
.:: !
LoadWorkOrdersCommand:: /
.::/ 0
Execute::0 7
(::7 8
null::8 <
)::< =
;::= >
};; 
else<< 
{== 
await>> 
DisplayAlert>> "
(>>" #
$str>># 5
,>>5 6
$str	>>7 ç
,
>>ç é
$str
>>è ï
)
>>ï ñ
;
>>ñ ó
}?? 
}BB 	
privateDD 
asyncDD 
voidDD !
LblCompleted_OnTappedDD 0
(DD0 1
objectDD1 7
senderDD8 >
,DD> ?
	EventArgsDD@ I
eDDJ K
)DDK L
{EE 	
ifFF 
(FF 
CrossConnectivityFF !
.FF! "
CurrentFF" )
.FF) *
IsConnectedFF* 5
)FF5 6
{GG 
thisHH 
.HH 
	viewModelHH 
.HH 
	IsPendingHH (
=HH) *
falseHH+ 0
;HH0 1
	viewModelJJ 
.JJ !
LoadWorkOrdersCommandJJ /
.JJ/ 0
ExecuteJJ0 7
(JJ7 8
nullJJ8 <
)JJ< =
;JJ= >
}KK 
elseLL 
{MM 
awaitNN 
DisplayAlertNN "
(NN" #
$strNN# 5
,NN5 6
$str	NN7 ç
,
NNç é
$str
NNè ï
)
NNï ñ
;
NNñ ó
}OO 
}QQ 	
privateSS 
asyncSS 
voidSS 
RefreshItem_ClickedSS .
(SS. /
objectSS/ 5
senderSS6 <
,SS< =
	EventArgsSS> G
eSSH I
)SSI J
{TT 	
ifUU 
(UU 
CrossConnectivityUU !
.UU! "
CurrentUU" )
.UU) *
IsConnectedUU* 5
)UU5 6
{VV 
	viewModelWW 
.WW 
CurrentTasksWW &
.WW& '
ClearWW' ,
(WW, -
)WW- .
;WW. /
	viewModelXX 
.XX !
LoadWorkOrdersCommandXX /
.XX/ 0
ExecuteXX0 7
(XX7 8
nullXX8 <
)XX< =
;XX= >
}YY 
elseZZ 
{[[ 
await\\ 
DisplayAlert\\ "
(\\" #
$str\\# 5
,\\5 6
$str	\\7 ç
,
\\ç é
$str
\\è ï
)
\\ï ñ
;
\\ñ ó
}]] 
}^^ 	
private`` 
async`` 
void`` 
SettingItem_Clicked`` .
(``. /
object``/ 5
sender``6 <
,``< =
	EventArgs``> G
e``H I
)``I J
{aa 	
awaitbb 

Navigationbb 
.bb 
	PushAsyncbb &
(bb& '
newbb' *
SettingsPagebb+ 7
(bb7 8
)bb8 9
)bb9 :
;bb: ;
}cc 	
privateee 
asyncee 
voidee %
NotificationsItem_Clickedee 4
(ee4 5
objectee5 ;
senderee< B
,eeB C
	EventArgseeD M
eeeN O
)eeO P
{ff 	
awaitgg 

Navigationgg 
.gg 
	PushAsyncgg &
(gg& '
newgg' *
NotificationsPagegg+ <
(gg< =
)gg= >
)gg> ?
;gg? @
}hh 	
privatejj 
asyncjj 
voidjj !
lstPending_ItemTappedjj 0
(jj0 1
objectjj1 7
senderjj8 >
,jj> ?
ItemTappedEventArgsjj@ S
ejjT U
)jjU V
{kk 	
varll 
	workOrderll 
=ll 
ell 
.ll 
Itemll "
asll# %
	WorkOrderll& /
;ll/ 0
ifnn 
(nn 
	workOrdernn 
==nn 
nullnn !
)nn! "
returnoo 
;oo  
StaticWorkOrderModelqq  
.qq  !

ResetModelqq! +
(qq+ ,
)qq, -
;qq- . 
StaticWorkOrderModelss  
.ss  !
	WorkOrderss! *
=ss+ ,
	workOrderss- 6
;ss6 7
woStatusvv 
=vv 
awaitvv 
Appvv  
.vv  !
woStatusRepovv! -
.vv- .'
GetWorkOrderStatusByIdAsyncvv. I
(vvI J
	workOrdervvJ S
.vvS T
WorkOrderIdvvT _
,vv_ `
	workOrdervva j
.vvj k
ServiceJobIdvvk w
)vvw x
;vvx y
ifxx 
(xx 
woStatusxx 
==xx 
nullxx  
)xx  !
{yy 
woStatuszz 
=zz 
newzz 
WorkOrderStatuszz .
(zz. /
)zz/ 0
{zz1 2
WorkOrderIdzz3 >
=zz? @
	workOrderzzA J
.zzJ K
WorkOrderIdzzK V
,zzV W
serviceJobIdzzX d
=zze f
	workOrderzzg p
.zzp q
ServiceJobIdzzq }
,zz} ~
isSignedByCustomer	zz ë
=
zzí ì
false
zzî ô
}
zzö õ
;
zzõ ú
await{{ 
App{{ 
.{{ 
woStatusRepo{{ &
.{{& '#
AddWorkOrderStatusAsync{{' >
({{> ?
woStatus{{? G
){{G H
;{{H I
}|| 
woStatus~~ 
.~~ 
WorkOrderStatusStr~~ '
=~~( )
	workOrder~~* 3
.~~3 4
	StatusStr~~4 =
;~~= >
woStatus 
. 
ServiceJobStatusStr (
=) *
	workOrder+ 4
.4 5
ServiceJobStatusStr5 H
;H I
await
ÅÅ 
App
ÅÅ 
.
ÅÅ 
woStatusRepo
ÅÅ "
.
ÅÅ" #(
UpdateWorkOrderStatusAsync
ÅÅ# =
(
ÅÅ= >
woStatus
ÅÅ> F
)
ÅÅF G
;
ÅÅG H
if
ÉÉ 
(
ÉÉ 
woStatus
ÉÉ 
.
ÉÉ !
ServiceJobStatusStr
ÉÉ ,
==
ÉÉ- /'
ServiceJobStatusConstants
ÉÉ0 I
.
ÉÉI J
SeviceJobStatus
ÉÉJ Y
.
ÉÉY Z
Pending_Sign
ÉÉZ f
.
ÉÉf g
ToString
ÉÉg o
(
ÉÉo p
)
ÉÉp q
)
ÉÉq r
{
ÑÑ 
await
ÖÖ 

Navigation
ÖÖ  
.
ÖÖ  !
	PushAsync
ÖÖ! *
(
ÖÖ* +
new
ÖÖ+ .
PendingSignPage
ÖÖ/ >
(
ÖÖ> ?
new
ÖÖ? B"
PendingSignViewModel
ÖÖC W
(
ÖÖW X
	workOrder
ÖÖX a
)
ÖÖa b
,
ÖÖb c
woStatus
ÖÖd l
)
ÖÖl m
)
ÖÖm n
;
ÖÖn o
}
ÜÜ 
else
áá 
{
àà 
await
ââ 

Navigation
ââ  
.
ââ  !
	PushAsync
ââ! *
(
ââ* +
new
ââ+ ."
WorkOrderDetailsPage
ââ/ C
(
ââC D
new
ââD G+
WorkOrderDetailsPageViewModel
ââH e
(
ââe f
	workOrder
ââf o
)
ââo p
,
ââp q
woStatus
ââr z
)
ââz {
)
ââ{ |
;
ââ| }
}
ää 
}
éé 	
}
èè 
}êê â
eC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Views\LaunchScreenPage.xaml.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Views! &
{ 
[ 
XamlCompilation 
( "
XamlCompilationOptions (
.( )
Compile) 0
)0 1
]1 2
public 
partial 
class 
LaunchScreenPage &
:' (
ContentPage) 4
{ 
public 
LaunchScreenPage	 
( 
) 
{ 
InitializeComponent 
( 
) 
; 
} 
private 
async 
void !
StartButton_OnClicked 0
(0 1
object1 7
sender8 >
,> ?
	EventArgs@ I
eJ K
)K L
{ 	
try 
{ 
ServerDetails 
details %
=& '
await( -
App. 1
.1 2

ServerRepo2 <
.< =!
GetCurrentServerAsync= R
(R S
)S T
;T U
if 
( 
! 
( 
details 
==  
null! %
)% &
)& '
{ 
ServerConfigs !
.! "
IP" $
=% &
details' .
.. /
IP/ 1
;1 2
ServerConfigs !
.! "
Port" &
=' (
details) 0
.0 1
Port1 5
;5 6
ServerConfigs   !
.  ! "
isHTTPS  " )
=  * +
details  , 3
.  3 4
isHTTPS  4 ;
;  ; <
}!! 
User## 
user## 
=## 
await## !
App##" %
.##% &
UserRepo##& .
.##. / 
GetLoggedInUserAsync##/ C
(##C D
)##D E
;##E F
if%% 
(%% 
user%% 
==%% 
null%%  
||%%! #
user%%$ (
.%%( )

isSignedIn%%) 3
==%%4 6
false%%7 <
)%%< =
{&& 
await'' 

Navigation'' $
.''$ %
	PushAsync''% .
(''. /
new''/ 2

SignInPage''3 =
(''= >
)''> ?
)''? @
;''@ A
}(( 
else)) 
{** 
UserConfigs++ 
.++  
USER_ID++  '
=++( )
user++* .
.++. /
User_Id++/ 6
;++6 7
UserConfigs,, 
.,,  
PARENTCOMPANY_ID,,  0
=,,1 2
user,,3 7
.,,7 8
ParentCompany_Id,,8 H
;,,H I
UserConfigs-- 
.--  
Name--  $
=--% &
user--' +
.--+ ,
Name--, 0
;--0 1
await// 

Navigation// $
.//$ %
	PushAsync//% .
(//. /
new/// 2
MainPage//3 ;
(//; <
)//< =
)//= >
;//> ?
}00 
}11 
catch22 
(22 
	Exception22 
ex22 
)22  
{33 
await44 
DisplayAlert44 "
(44" #
$str44# ,
,44, -
$str44. P
+44Q R
ex44S U
.44U V
Message44V ]
,44] ^
$str44_ c
)44c d
;44d e
}55 
}66 	
}77 
}88 ª%
lC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\WorkOrdersPageViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class #
WorkOrdersPageViewModel (
:) *
BaseViewModel+ 8
{ 
WorkOrderService 
	woService "
;" #
public  
ObservableCollection #
<# $
	WorkOrder$ -
>- .

WorkOrders/ 9
{: ;
get< ?
;? @
setA D
;D E
}F G
public 
Command !
LoadWorkOrdersCommand ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public #
WorkOrdersPageViewModel &
(& '
bool' +
	isPending, 5
)5 6
{ 	
	woService 
= 
new 
WorkOrderService ,
(, -
)- .
;. /

WorkOrders 
= 
new  
ObservableCollection 1
<1 2
	WorkOrder2 ;
>; <
(< =
)= >
;> ?!
LoadWorkOrdersCommand !
=" #
new$ '
Command( /
(/ 0
async0 5
(6 7
)7 8
=>9 ;
await< A(
ExecuteLoadWorkOrdersCommandB ^
(^ _
	isPending_ h
)h i
)i j
;j k
}&& 	
public(( 
async(( 
Task(( (
ExecuteLoadWorkOrdersCommand(( 6
(((6 7
bool((7 ;
	isPending((< E
)((E F
{)) 	
if** 
(** 
IsBusy** 
)** 
return++ 
;++ 
IsBusy-- 
=-- 
true-- 
;-- 
try// 
{00 

WorkOrders11 
.11 
Clear11  
(11  !
)11! "
;11" #
var22 

workOrders22 
=22  
await22! &
	woService22' 0
.220 1
Get221 4
(224 5
null225 9
)229 :
;22: ;
if44 
(44 

workOrders44 
==44  
null44! %
||44& (

workOrders44) 3
.443 4
Count444 9
(449 :
)44: ;
==44< >
$num44? @
)44@ A
{55 
HasNoListItem66 !
=66" #
true66$ (
;66( )
}77 
else88 
{99 
foreach:: 
(:: 
var::  
	workOrder::! *
in::+ -

workOrders::. 8
)::8 9
{;; 
if<< 
(<< 
!<< 
(<< 
	isPending<< '
)<<' (
)<<( )
{== 
if>> 
(>>  
	workOrder>>  )
.>>) *
ServiceJobStatusStr>>* =
==>>> @%
ServiceJobStatusConstants>>A Z
.>>Z [
SeviceJobStatus>>[ j
.>>j k
	Submitted>>k t
.>>t u
ToString>>u }
(>>} ~
)>>~ 
)	>> Ä
{?? 

WorkOrders@@  *
.@@* +
Add@@+ .
(@@. /
	workOrder@@/ 8
)@@8 9
;@@9 :
}AA 
}BB 
elseCC 
{DD 
ifEE 
(EE  
!EE  !
(EE! "
	workOrderEE" +
.EE+ ,
ServiceJobStatusStrEE, ?
==EE@ B%
ServiceJobStatusConstantsEEC \
.EE\ ]
SeviceJobStatusEE] l
.EEl m
	SubmittedEEm v
.EEv w
ToStringEEw 
(	EE Ä
)
EEÄ Å
)
EEÅ Ç
)
EEÇ É
{FF 

WorkOrdersGG  *
.GG* +
AddGG+ .
(GG. /
	workOrderGG/ 8
)GG8 9
;GG9 :
}HH 
}II 
}JJ 
ifLL 
(LL 

WorkOrdersLL !
==LL" $
nullLL% )
||LL* ,

WorkOrdersLL- 7
.LL7 8
CountLL8 =
==LL> @
$numLLA B
)LLB C
{MM 
HasNoListItemNN %
=NN& '
trueNN( ,
;NN, -
}OO 
}PP 
}QQ 
catchRR 
(RR 
	ExceptionRR 
exRR 
)RR  
{SS 
DebugTT 
.TT 
	WriteLineTT 
(TT  
exTT  "
)TT" #
;TT# $
}UU 
finallyVV 
{WW 
IsBusyXX 
=XX 
falseXX 
;XX 
}YY 
}ZZ 	
}[[ 
}\\ £`
rC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\WorkOrderDetailsPageViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class )
WorkOrderDetailsPageViewModel .
:/ 0
BaseViewModel1 >
{ 
WorkOrderService 
	woService "
;" #
public 
	WorkOrder 
	WorkOrder "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
PickupDateAndTime '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
StandByDateAndTime (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
PickUpPaxStr "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string  
PassengerInformation *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
PickupPointStr $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
DropOffPointStr %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public   
bool   
ModifyStandByDate   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
=  4 5
false  6 ;
;  ; <
public"" 
bool"" 
ModifyReason""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
=""/ 0
false""1 6
;""6 7
public$$ 
Button$$ 

btnEndTask$$  
{$$! "
get$$# &
;$$& '
set$$( +
;$$+ ,
}$$- .
public&& 
Button&& 
btnSaveData&& !
{&&" #
get&&$ '
;&&' (
set&&) ,
;&&, -
}&&. /
public(( 
Button(( 
btnAddPassenger(( %
{((& '
get((( +
;((+ ,
set((- 0
;((0 1
}((2 3
public** 

RankEntity** 
PassengerRank** '
{**( )
get*** -
;**- .
set**/ 2
;**2 3
}**4 5
public,, 
Command,, !
LoadReferencesCommand,, ,
{,,- .
get,,/ 2
;,,2 3
set,,4 7
;,,7 8
},,9 :
public..  
ObservableCollection.. #
<..# $

RankEntity..$ .
>... /
Ranks..0 5
{..6 7
get..8 ;
;..; <
set..= @
;..@ A
}..B C
public00 )
WorkOrderDetailsPageViewModel00 ,
(00, -
	WorkOrder00- 6
	workOrder007 @
=00A B
null00C G
)00G H
{11 	
	WorkOrder22 
=22 
	workOrder22 !
;22! "
	woService33 
=33 
new33 
WorkOrderService33 ,
(33, -
)33- .
;33. /
Ranks44 
=44 
new44  
ObservableCollection44 ,
<44, -

RankEntity44- 7
>447 8
(448 9
)449 :
;44: ;
FillEmptyFields66 
(66 
)66 
;66 
this88 
.88 
PickUpPaxStr88 
=88 
$str88  #
+88$ %
	workOrder88& /
.88/ 0
NoOfPax880 7
.887 8
ToString888 @
(88@ A
)88A B
;88B C
this99 
.99 
PickupDateAndTime99 "
=99# $
$"99% '
{99' (
	workOrder99( 1
.991 2

PickupTime992 <
}99< =
"99= >
;99> ?
this:: 
.:: 
StandByDateAndTime:: #
=::$ %
$"::& (
{::( )
	workOrder::) 2
.::2 3
StandByDateStr::3 A
}::A B
$str::B E
{::E F
	workOrder::F O
.::O P
StandByTime::P [
}::[ \
"::\ ]
;::] ^
this;; 
.;;  
PassengerInformation;; %
=;;& '
$";;( *
{;;* +
	workOrder;;+ 4
.;;4 5
InChargePassenger;;5 F
};;F G
$str;;G R
{;;R S
	workOrder;;S \
.;;\ ]
RankStr;;] d
};;d e
$str;;e o
{;;o p
	workOrder;;p y
.;;y z
NoOfPax	;;z Å
.
;;Å Ç
ToString
;;Ç ä
(
;;ä ã
)
;;ã å
}
;;å ç
$str
;;ç í
"
;;í ì
;
;;ì î
this<< 
.<< 
PickupPointStr<< 
=<<  !
$"<<" $
{<<$ %
	workOrder<<% .
.<<. /
PickupPoint<</ :
}<<: ;
$str<<; B
{<<B C
	workOrder<<C L
.<<L M
PickupPointDesc<<M \
}<<\ ]
"<<] ^
;<<^ _
this== 
.== 
DropOffPointStr==  
===! "
$"==# %
{==% &
	workOrder==& /
.==/ 0
DropOffPoint==0 <
}==< =
$str=== D
{==D E
	workOrder==E N
.==N O
DropOffPointDesc==O _
}==_ `
"==` a
;==a b!
LoadReferencesCommand>> !
=>>" #
new>>$ '
Command>>( /
(>>/ 0
async>>0 5
(>>6 7
)>>7 8
=>>>9 ;
await>>< A(
ExecuteLoadReferencesCommand>>B ^
(>>^ _
)>>_ `
)>>` a
;>>a b
}?? 	
publicAA 
asyncAA 
TaskAA (
ExecuteLoadReferencesCommandAA 6
(AA6 7
)AA7 8
{BB 	

btnEndTaskCC 
.CC 
	IsEnabledCC  
=CC! "
falseCC# (
;CC( )
btnSaveDataDD 
.DD 
	IsEnabledDD !
=DD" #
falseDD$ )
;DD) *
btnAddPassengerEE 
.EE 
	IsEnabledEE %
=EE& '
falseEE( -
;EE- .
ifHH 
(HH 
IsBusyHH 
)HH 
returnII 
;II 
IsBusyKK 
=KK 
trueKK 
;KK 
tryMM 
{NN 
ifOO 
(OO 
RanksOO 
!=OO 
nullOO 
)OO  
RanksOO! &
.OO& '
ClearOO' ,
(OO, -
)OO- .
;OO. /
varQQ 
ranksQQ 
=QQ 
awaitQQ !
	woServiceQQ" +
.QQ+ ,
GetRanksQQ, 4
(QQ4 5
)QQ5 6
;QQ6 7
ifSS 
(SS 
ranksSS 
!=SS 
nullSS  
)SS  !
{TT 
foreachUU 
(UU 
varUU  
rankUU! %
inUU& (
ranksUU) .
)UU. /
{VV 
RanksWW 
.WW 
AddWW !
(WW! "
rankWW" &
)WW& '
;WW' (
}XX 
}YY 
}ZZ 
catch[[ 
([[ 
	Exception[[ 
ex[[ 
)[[  
{\\ 
Debug]] 
.]] 
	WriteLine]] 
(]]  
ex]]  "
)]]" #
;]]# $
}^^ 
finally__ 
{`` 
IsBusyaa 
=aa 
falseaa 
;aa 
btnSaveDatabb 
.bb 
	IsEnabledbb %
=bb& '
truebb( ,
;bb, -

btnEndTaskcc 
.cc 
	IsEnabledcc $
=cc% &
truecc' +
;cc+ ,
btnAddPassengerdd 
.dd  
	IsEnableddd  )
=dd* +
truedd, 0
;dd0 1
}ff 
}gg 	
privateii 
voidii 
FillEmptyFieldsii $
(ii$ %
)ii% &
{jj 	
ifkk 
(kk 
Stringkk 
.kk 
IsNullOrEmptykk $
(kk$ %
	WorkOrderkk% .
.kk. /
Descriptionkk/ :
)kk: ;
)kk; <
{ll 
	WorkOrdermm 
.mm 
Descriptionmm %
=mm& '
$strmm( +
;mm+ ,
}nn 
ifoo 
(oo 
Stringoo 
.oo 
IsNullOrEmptyoo $
(oo$ %
	WorkOrderoo% .
.oo. /
AdditionalStopsoo/ >
)oo> ?
)oo? @
{pp 
	WorkOrderqq 
.qq 
AdditionalStopsqq )
=qq* +
$strqq, A
;qqA B
}rr 
ifss 
(ss 
Stringss 
.ss 
IsNullOrEmptyss $
(ss$ %
	WorkOrderss% .
.ss. /
Descriptionss/ :
)ss: ;
)ss; <
{tt 
	WorkOrderuu 
.uu 
DropOffPointDescuu *
=uu+ ,
$struu- 0
;uu0 1
}vv 
ifww 
(ww 
Stringww 
.ww 
IsNullOrEmptyww $
(ww$ %
	WorkOrderww% .
.ww. /
	AgentNameww/ 8
)ww8 9
)ww9 :
{xx 
	WorkOrderyy 
.yy 
	AgentNameyy #
=yy$ %
$stryy& )
;yy) *
}zz 
if{{ 
({{ 
String{{ 
.{{ 
IsNullOrEmpty{{ $
({{$ %
	WorkOrder{{% .
.{{. /
DropOffPointDesc{{/ ?
){{? @
){{@ A
{|| 
	WorkOrder}} 
.}} 
DropOffPointDesc}} *
=}}+ ,
$str}}- =
;}}= >
}~~ 
if 
( 
String 
. 
IsNullOrEmpty $
($ %
	WorkOrder% .
.. /
FlightNo/ 7
)7 8
)8 9
{
ÄÄ 
	WorkOrder
ÅÅ 
.
ÅÅ 
FlightNo
ÅÅ "
=
ÅÅ# $
$str
ÅÅ% (
;
ÅÅ( )
}
ÇÇ 
if
ÉÉ 
(
ÉÉ 
String
ÉÉ 
.
ÉÉ 
IsNullOrEmpty
ÉÉ #
(
ÉÉ# $
	WorkOrder
ÉÉ$ -
.
ÉÉ- .
BoardTypeStr
ÉÉ. :
)
ÉÉ: ;
)
ÉÉ; <
{
ÑÑ 
	WorkOrder
ÖÖ 
.
ÖÖ 
BoardTypeStr
ÖÖ &
=
ÖÖ' (
$str
ÖÖ) ,
;
ÖÖ, -
}
ÜÜ 
if
áá 
(
áá 
String
áá 
.
áá 
IsNullOrEmpty
áá $
(
áá$ %
	WorkOrder
áá% .
.
áá. /
PickupPointDesc
áá/ >
)
áá> ?
)
áá? @
{
àà 
	WorkOrder
ââ 
.
ââ 
PickupPointDesc
ââ )
=
ââ* +
$str
ââ, <
;
ââ< =
}
ää 
if
ãã 
(
ãã 
String
ãã 
.
ãã 
IsNullOrEmpty
ãã $
(
ãã$ %
	WorkOrder
ãã% .
.
ãã. /
RankStr
ãã/ 6
)
ãã6 7
)
ãã7 8
{
åå 
	WorkOrder
çç 
.
çç 
RankStr
çç !
=
çç" #
$str
çç$ *
;
çç* +
}
éé 
if
èè 
(
èè 
String
èè 
.
èè 
IsNullOrEmpty
èè $
(
èè$ %
	WorkOrder
èè% .
.
èè. /
Remark
èè/ 5
)
èè5 6
)
èè6 7
{
êê 
	WorkOrder
ëë 
.
ëë 
Remark
ëë  
=
ëë! "
$str
ëë# &
;
ëë& '
}
íí 
if
ìì 
(
ìì 
String
ìì 
.
ìì 
IsNullOrEmpty
ìì $
(
ìì$ %
	WorkOrder
ìì% .
.
ìì. /

VesselName
ìì/ 9
)
ìì9 :
)
ìì: ;
{
îî 
	WorkOrder
ïï 
.
ïï 

VesselName
ïï $
=
ïï% &
$str
ïï' *
;
ïï* +
}
ññ 
}
óó 	
}
òò 
}ôô Â
iC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\StaticWorkOrderModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

static 
class  
StaticWorkOrderModel ,
{		 
public

 
static

 
	WorkOrder

 
	WorkOrder

  )
=

* +
null

, 0
;

0 1
public 
static  
PendingSignViewModel *
PendingSign+ 6
=7 8
null9 =
;= >
public 
static 
List 
< 
	WorkOrder $
>$ %
PendingOrdersList& 7
=8 9
new: =
List> B
<B C
	WorkOrderC L
>L M
(M N
)N O
;O P
public 
static 
List 
< 
	WorkOrder $
>$ %
CompletedOrdersList& 9
=: ;
new< ?
List@ D
<D E
	WorkOrderE N
>N O
(O P
)P Q
;Q R
public 
static 
void 

ResetLists %
(% &
)& '
{ 	
PendingOrdersList 
. 
Clear #
(# $
)$ %
;% &
CompletedOrdersList 
.  
Clear  %
(% &
)& '
;' (
} 	
public 
static 
void 

ResetModel %
(% &
)& '
{ 	
	WorkOrder 
= 
null 
; 
PendingSign 
= 
null 
; 
} 	
} 
} î
jC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\SnapShotPageViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class !
SnapShotPageViewModel &
:' (
BaseViewModel) 6
{ 
}		 
}

 ê
hC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\SignInPageViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class 
SignInPageViewModel $
:% &
BaseViewModel' 4
{		 
} 
} ‰B
gC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\SignatureViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class 
SignatureViewModel #
:$ %
BaseViewModel& 3
{ 
public 
WorkOrderService 
	woService  )
;) *
public 
string 
PickupDateAndTime '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
	WorkOrder 
	WorkOrder "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
Int64 
serviceJobId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Command !
LoadReferencesCommand ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public  
ObservableCollection #
<# $
WorkOrderPassenger$ 6
>6 7

Passengers8 B
{C D
getE H
;H I
setJ M
;M N
}O P
public 
SignatureViewModel !
(! "
	WorkOrder" +
	workOrder, 5
)5 6
{ 	
this 
. 
	woService 
= 
new  
WorkOrderService! 1
(1 2
)2 3
;3 4
this   
.   
	WorkOrder   
=   
	workOrder   &
;  & '
this!! 
.!! 
serviceJobId!! 
=!! 
	workOrder!!  )
.!!) *
ServiceJobId!!* 6
;!!6 7
this## 
.## 
PickupDateAndTime## "
=### $
$"##% '
{##' (
this##( ,
.##, -
	WorkOrder##- 6
.##6 7
PickupDateStr##7 D
}##D E
$str##E H
{##H I
this##I M
.##M N
	WorkOrder##N W
.##W X

PickupTime##X b
}##b c
"##c d
;##d e

Passengers%% 
=%% 
new%%  
ObservableCollection%% 1
<%%1 2
WorkOrderPassenger%%2 D
>%%D E
(%%E F
)%%F G
;%%G H
foreach'' 
('' 
var'' 
	passenger'' "
in''# %
	WorkOrder''& /
.''/ 0"
WorkOrderPassengerList''0 F
)''F G
{(( 

Passengers)) 
.)) 
Add)) 
()) 
	passenger)) (
)))( )
;))) *
}** 
}// 	
public11 
async11 
Task11 (
ExecuteLoadReferencesCommand11 6
(116 7
)117 8
{22 	
if33 
(33 
IsBusy33 
)33 
return44 
;44 
IsBusy66 
=66 
true66 
;66 
try88 
{99 
	WorkOrder:: 
=:: 
await:: !
	woService::" +
.::+ ,
GetOrderBySJId::, :
(::: ;
this::; ?
.::? @
serviceJobId::@ L
)::L M
;::M N
if<< 
(<< 
	WorkOrder<< 
!=<< 
null<<  $
)<<$ %
{== 
this>> 
.>> 
PickupDateAndTime>> *
=>>+ ,
$">>- /
{>>/ 0
this>>0 4
.>>4 5
	WorkOrder>>5 >
.>>> ?
PickupDateStr>>? L
}>>L M
$str>>M P
{>>P Q
this>>Q U
.>>U V
	WorkOrder>>V _
.>>_ `

PickupTime>>` j
}>>j k
">>k l
;>>l m

Passengers@@ 
.@@ 
Clear@@ $
(@@$ %
)@@% &
;@@& '
foreachBB 
(BB 
varBB  
	passengerBB! *
inBB+ -
	WorkOrderBB. 7
.BB7 8"
WorkOrderPassengerListBB8 N
)BBN O
{CC 
varDD 
existingPassengerDD -
=DD. /

PassengersDD0 :
.DD: ;
WhereDD; @
(DD@ A
xDDA B
=>DDC E
xDDF G
.DDG H
IdDDH J
==DDK M
	passengerDDN W
.DDW X
IdDDX Z
)DDZ [
.DD[ \
FirstOrDefaultDD\ j
(DDj k
)DDk l
;DDl m
ifFF 
(FF 
existingPassengerFF ,
==FF- /
nullFF0 4
)FF4 5
{GG 

PassengersHH &
.HH& '
AddHH' *
(HH* +
	passengerHH+ 4
)HH4 5
;HH5 6
}II 
}JJ 
}KK 
}LL 
catchMM 
(MM 
	ExceptionMM 
exMM 
)MM  
{NN 
DebugOO 
.OO 
	WriteLineOO 
(OO  
exOO  "
)OO" #
;OO# $
}PP 
finallyQQ 
{RR 
IsBusySS 
=SS 
falseSS 
;SS 
}TT 
}UU 	
privateWW 
voidWW 
FillEmptyFieldsWW $
(WW$ %
)WW% &
{XX 	
ifYY 
(YY 
StringYY 
.YY 
IsNullOrEmptyYY $
(YY$ %
	WorkOrderYY% .
.YY. /
DescriptionYY/ :
)YY: ;
)YY; <
{ZZ 
	WorkOrder[[ 
.[[ 
Description[[ %
=[[& '
$str[[( +
;[[+ ,
}\\ 
if]] 
(]] 
String]] 
.]] 
IsNullOrEmpty]] $
(]]$ %
	WorkOrder]]% .
.]]. /
AdditionalStops]]/ >
)]]> ?
)]]? @
{^^ 
	WorkOrder__ 
.__ 
AdditionalStops__ )
=__* +
$str__, A
;__A B
}`` 
ifaa 
(aa 
Stringaa 
.aa 
IsNullOrEmptyaa $
(aa$ %
	WorkOrderaa% .
.aa. /
Descriptionaa/ :
)aa: ;
)aa; <
{bb 
	WorkOrdercc 
.cc 
DropOffPointDesccc *
=cc+ ,
$strcc- 0
;cc0 1
}dd 
ifee 
(ee 
Stringee 
.ee 
IsNullOrEmptyee $
(ee$ %
	WorkOrderee% .
.ee. /
DropOffPointDescee/ ?
)ee? @
)ee@ A
{ff 
	WorkOrdergg 
.gg 
DropOffPointDescgg *
=gg+ ,
$strgg- 0
;gg0 1
}hh 
ifii 
(ii 
Stringii 
.ii 
IsNullOrEmptyii $
(ii$ %
	WorkOrderii% .
.ii. /
FlightNoii/ 7
)ii7 8
)ii8 9
{jj 
	WorkOrderkk 
.kk 
FlightNokk "
=kk# $
$strkk% (
;kk( )
}ll 
ifmm 
(mm 
Stringmm 
.mm 
IsNullOrEmptymm $
(mm$ %
	WorkOrdermm% .
.mm. /
PickupPointDescmm/ >
)mm> ?
)mm? @
{nn 
	WorkOrderoo 
.oo 
PickupPointDescoo )
=oo* +
$stroo, /
;oo/ 0
}pp 
ifqq 
(qq 
Stringqq 
.qq 
IsNullOrEmptyqq $
(qq$ %
	WorkOrderqq% .
.qq. /
RankStrqq/ 6
)qq6 7
)qq7 8
{rr 
	WorkOrderss 
.ss 
RankStrss !
=ss" #
$strss$ '
;ss' (
}tt 
ifuu 
(uu 
Stringuu 
.uu 
IsNullOrEmptyuu $
(uu$ %
	WorkOrderuu% .
.uu. /
Remarkuu/ 5
)uu5 6
)uu6 7
{vv 
	WorkOrderww 
.ww 
Remarkww  
=ww! "
$strww# &
;ww& '
}xx 
ifyy 
(yy 
Stringyy 
.yy 
IsNullOrEmptyyy $
(yy$ %
	WorkOrderyy% .
.yy. /

VesselNameyy/ 9
)yy9 :
)yy: ;
{zz 
	WorkOrder{{ 
.{{ 

VesselName{{ $
={{% &
$str{{' *
;{{* +
}|| 
}}} 	
}~~ 
}  

jC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\SettingsPageViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class !
SettingsPageViewModel &
:' (
BaseViewModel) 6
{		 
public

 
string

 
CurrentUserName

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
public 
string 

AppVersion  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ReleaseDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public !
SettingsPageViewModel $
($ %
)% &
{ 	
CurrentUserName 
= 
UserConfigs )
.) *
Name* .
;. /

AppVersion 
= 

AppConfigs #
.# $
APP_VERSION$ /
;/ 0
ReleaseDate 
= 

AppConfigs $
.$ %
RELEASE_DATE% 1
;1 2
} 	
} 
} ï
nC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\ServerConfigPageViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class %
ServerConfigPageViewModel *
:+ ,
BaseViewModel- :
{		 
public

 
string

 
IP

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
string 
Port 
{ 
get  
;  !
set" %
;% &
}' (
public %
ServerConfigPageViewModel (
(( )
)) *
{ 	
IP 
= 
ServerConfigs 
. 
IP !
;! "
Port 
= 
ServerConfigs  
.  !
Port! %
;% &
} 	
} 
} Áo
iC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\PendingSignViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class  
PendingSignViewModel %
:& '
BaseViewModel( 5
{ $
PendingSignEntityService  
psEntityService! 0
;0 1
public)) 
Button)) 
btnSignature)) "
{))# $
get))% (
;))( )
set))* -
;))- .
}))/ 0
public** 
Button** 
btnSnapshot** !
{**" #
get**$ '
;**' (
set**) ,
;**, -
}**. /
public++ 
Button++ 
btnComplete++ !
{++" #
get++$ '
;++' (
set++) ,
;++, -
}++. /
public-- 
	WorkOrder-- 
	WorkOrder-- "
{--# $
get--% (
;--( )
set--* -
;--- .
}--/ 0
public// 
List// 
<// 
PendingSignEntity// %
>//% &
PendingSignEntities//' :
{//; <
get//= @
;//@ A
set//B E
;//E F
}//G H
public11  
ObservableCollection11 #
<11# $!
CheckListHelperEntity11$ 9
>119 :

Checklists11; E
{11F G
get11H K
;11K L
set11M P
;11P Q
}11R S
publicBB  
ObservableCollectionBB #
<BB# $
PendingSignEntityBB$ 5
>BB5 6
MeetingServicesBB7 F
{BBG H
getBBI L
;BBL M
setBBN Q
;BBQ R
}BBS T
publicDD  
ObservableCollectionDD #
<DD# $
PendingSignEntityDD$ 5
>DD5 6
CustomDetentionsDD7 G
{DDH I
getDDJ M
;DDM N
setDDO R
;DDR S
}DDT U
publicFF  
ObservableCollectionFF #
<FF# $
PendingSignEntityFF$ 5
>FF5 6
RanksFF7 <
{FF= >
getFF? B
;FFB C
setFFD G
;FFG H
}FFI J
publicHH 
stringHH 
	PickupPaxHH 
{HH  !
getHH" %
;HH% &
setHH' *
;HH* +
}HH, -
=HH. /
StringHH0 6
.HH6 7
EmptyHH7 <
;HH< =
publicJJ 
CommandJJ !
LoadReferencesCommandJJ ,
{JJ- .
getJJ/ 2
;JJ2 3
setJJ4 7
;JJ7 8
}JJ9 :
publicLL 
stringLL 
ServiceJobStatusLL &
{LL' (
getLL) ,
;LL, -
setLL. 1
;LL1 2
}LL3 4
publicNN  
PendingSignViewModelNN #
(NN# $
)NN$ %
{OO 	
}OO 
publicQQ  
PendingSignViewModelQQ #
(QQ# $
	WorkOrderQQ$ -
	workOrderQQ. 7
)QQ7 8
{RR 	
psEntityServiceSS 
=SS 
newSS !$
PendingSignEntityServiceSS" :
(SS: ;
)SS; <
;SS< =
ServiceJobStatusUU 
=UU 
	workOrderUU (
.UU( )
ServiceJobStatusStrUU) <
;UU< =
thisWW 
.WW 
	WorkOrderWW 
=WW 
	workOrderWW &
;WW& '

ChecklistsYY 
=YY 
newYY  
ObservableCollectionYY 1
<YY1 2!
CheckListHelperEntityYY2 G
>YYG H
(YYH I
)YYI J
;YYJ K
MeetingServicesZZ 
=ZZ 
newZZ ! 
ObservableCollectionZZ" 6
<ZZ6 7
PendingSignEntityZZ7 H
>ZZH I
(ZZI J
)ZZJ K
;ZZK L
CustomDetentions[[ 
=[[ 
new[[ " 
ObservableCollection[[# 7
<[[7 8
PendingSignEntity[[8 I
>[[I J
([[J K
)[[K L
;[[L M
Ranks\\ 
=\\ 
new\\  
ObservableCollection\\ ,
<\\, -
PendingSignEntity\\- >
>\\> ?
(\\? @
)\\@ A
;\\A B!
LoadReferencesCommand^^ !
=^^" #
new^^$ '
Command^^( /
(^^/ 0
async^^0 5
(^^6 7
)^^7 8
=>^^9 ;
await^^< A(
ExecuteLoadReferencesCommand^^B ^
(^^^ _
)^^_ `
)^^` a
;^^a b
}`` 	
publicbb 
asyncbb 
Taskbb (
ExecuteLoadReferencesCommandbb 6
(bb6 7
)bb7 8
{cc 	
btnCompletedd 
.dd 
	IsEnableddd !
=dd" #
falsedd$ )
;dd) *
btnSignatureee 
.ee 
	IsEnabledee "
=ee# $
falseee% *
;ee* +
btnSnapshotff 
.ff 
	IsEnabledff !
=ff" #
falseff$ )
;ff) *
ifhh 
(hh 
IsBusyhh 
)hh 
returnii 
;ii 
IsBusykk 
=kk 
truekk 
;kk 
trymm 
{nn 

Checklistsoo 
.oo 
Clearoo  
(oo  !
)oo! "
;oo" #
MeetingServicespp 
.pp  
Clearpp  %
(pp% &
)pp& '
;pp' (
CustomDetentionsqq  
.qq  !
Clearqq! &
(qq& '
)qq' (
;qq( )
Ranksrr 
.rr 
Clearrr 
(rr 
)rr 
;rr 
vartt 
pendingSignEntitiestt '
=tt( )
awaittt* /
psEntityServicett0 ?
.tt? @
Gettt@ C
(ttC D
nullttD H
)ttH I
;ttI J
varvv 
checklistModelsvv #
=vv$ %
pendingSignEntitiesvv& 9
.vv9 :
Wherevv: ?
(vv? @
xvv@ A
=>vvB D
xvvE F
.vvF G
ShortText10vvG R
==vvS U*
PendingSignEntityTypeConstantsvvV t
.vvt u

ModelTypesvvu 
.	vv Ä
	Checklist
vvÄ â
.
vvâ ä
ToString
vvä í
(
vví ì
)
vvì î
)
vvî ï
.
vvï ñ
ToList
vvñ ú
(
vvú ù
)
vvù û
;
vvû ü
varxx  
meetingServiceModelsxx (
=xx) *
pendingSignEntitiesxx+ >
.xx> ?
Wherexx? D
(xxD E
xxxE F
=>xxG I
xxxJ K
.xxK L
ShortText10xxL W
==xxX Z*
PendingSignEntityTypeConstantsxx[ y
.xxy z

ModelTypes	xxz Ñ
.
xxÑ Ö
MeetingService
xxÖ ì
.
xxì î
ToString
xxî ú
(
xxú ù
)
xxù û
)
xxû ü
.
xxü †
ToList
xx† ¶
(
xx¶ ß
)
xxß ®
;
xx® ©
varzz !
customDetentionModelszz )
=zz* +
pendingSignEntitieszz, ?
.zz? @
Wherezz@ E
(zzE F
xzzF G
=>zzH J
xzzK L
.zzL M
ShortText10zzM X
==zzY [*
PendingSignEntityTypeConstantszz\ z
.zzz {

ModelTypes	zz{ Ö
.
zzÖ Ü
CustomDetention
zzÜ ï
.
zzï ñ
ToString
zzñ û
(
zzû ü
)
zzü †
)
zz† °
.
zz° ¢
ToList
zz¢ ®
(
zz® ©
)
zz© ™
;
zz™ ´
var|| 

rankModels|| 
=||  
pendingSignEntities||! 4
.||4 5
Where||5 :
(||: ;
x||; <
=>||= ?
x||@ A
.||A B
ShortText10||B M
==||N P*
PendingSignEntityTypeConstants||Q o
.||o p

ModelTypes||p z
.||z {
Rank||{ 
.	|| Ä
ToString
||Ä à
(
||à â
)
||â ä
)
||ä ã
.
||ã å
ToList
||å í
(
||í ì
)
||ì î
;
||î ï
if~~ 
(~~ 
!~~ 
(~~ 
checklistModels~~ %
.~~% &
Count~~& +
==~~, .
$num~~/ 0
)~~0 1
)~~1 2
{ 
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ  
	checklist
ÄÄ! *
in
ÄÄ+ -
checklistModels
ÄÄ. =
)
ÄÄ= >
{
ÅÅ 

Checklists
ÇÇ "
.
ÇÇ" #
Add
ÇÇ# &
(
ÇÇ& '
new
ÇÇ' *#
CheckListHelperEntity
ÇÇ+ @
(
ÇÇ@ A
)
ÇÇA B
{
ÉÉ 
Id
ÑÑ 
=
ÑÑ  
	checklist
ÑÑ! *
.
ÑÑ* +
Id
ÑÑ+ -
,
ÑÑ- .
Code
ÖÖ  
=
ÖÖ! "
	checklist
ÖÖ# ,
.
ÖÖ, -
Code
ÖÖ- 1
,
ÖÖ1 2
Name
ÜÜ  
=
ÜÜ! "
	checklist
ÜÜ# ,
.
ÜÜ, -
Name
ÜÜ- 1
,
ÜÜ1 2

ShortText9
áá &
=
áá' (
	checklist
áá) 2
.
áá2 3

ShortText9
áá3 =
,
áá= >
ShortText10
àà '
=
àà( )
	checklist
àà* 3
.
àà3 4
ShortText10
àà4 ?
,
àà? @
Selected
ââ $
=
ââ% &
	checklist
ââ' 0
.
ââ0 1
Selected
ââ1 9
}
ää 
)
ää 
;
ää 
}
ãã 
}
åå 
if
êê 
(
êê 
!
êê 
(
êê "
meetingServiceModels
êê *
.
êê* +
Count
êê+ 0
==
êê1 3
$num
êê4 5
)
êê5 6
)
êê6 7
{
ëë 
foreach
íí 
(
íí 
var
íí  
meetingService
íí! /
in
íí0 2"
meetingServiceModels
íí3 G
)
ííG H
{
ìì 
MeetingServices
îî '
.
îî' (
Add
îî( +
(
îî+ ,
meetingService
îî, :
)
îî: ;
;
îî; <
}
ïï 
}
ññ 
if
òò 
(
òò 
!
òò 
(
òò #
customDetentionModels
òò +
.
òò+ ,
Count
òò, 1
==
òò2 4
$num
òò5 6
)
òò6 7
)
òò7 8
{
ôô 
foreach
öö 
(
öö 
var
öö  
customDetention
öö! 0
in
öö1 3#
customDetentionModels
öö4 I
)
ööI J
{
õõ 
CustomDetentions
úú (
.
úú( )
Add
úú) ,
(
úú, -
customDetention
úú- <
)
úú< =
;
úú= >
}
ùù 
}
ûû 
if
†† 
(
†† 
!
†† 
(
†† 

rankModels
††  
.
††  !
Count
††! &
==
††' )
$num
††* +
)
††+ ,
)
††, -
{
°° 
foreach
¢¢ 
(
¢¢ 
var
¢¢  
rank
¢¢! %
in
¢¢& (

rankModels
¢¢) 3
)
¢¢3 4
{
££ 
Ranks
§§ 
.
§§ 
Add
§§ !
(
§§! "
rank
§§" &
)
§§& '
;
§§' (
}
•• 
}
¶¶ 
}
ßß 
catch
®® 
(
®® 
	Exception
®® 
ex
®® 
)
®®  
{
©© 
Debug
™™ 
.
™™ 
	WriteLine
™™ 
(
™™  
ex
™™  "
)
™™" #
;
™™# $
}
´´ 
finally
¨¨ 
{
≠≠ 
IsBusy
ÆÆ 
=
ÆÆ 
false
ÆÆ 
;
ÆÆ 
btnComplete
ØØ 
.
ØØ 
	IsEnabled
ØØ %
=
ØØ& '
true
ØØ( ,
;
ØØ, -
btnSignature
∞∞ 
.
∞∞ 
	IsEnabled
∞∞ &
=
∞∞' (
true
∞∞) -
;
∞∞- .
btnSnapshot
±± 
.
±± 
	IsEnabled
±± %
=
±±& '
true
±±( ,
;
±±, -
}
≤≤ 
}
≥≥ 	
}
∆∆ 
public
»» 

class
»» #
CheckListHelperEntity
»» &
:
»»' ($
INotifyPropertyChanged
»») ?
{
…… 
public
   
Int64
   
Id
   
{
   
get
   
;
   
set
   "
;
  " #
}
  $ %
public
ÃÃ 
string
ÃÃ 
Code
ÃÃ 
{
ÃÃ 
get
ÃÃ  
;
ÃÃ  !
set
ÃÃ" %
;
ÃÃ% &
}
ÃÃ' (
public
ŒŒ 
string
ŒŒ 
Name
ŒŒ 
{
ŒŒ 
get
ŒŒ  
;
ŒŒ  !
set
ŒŒ" %
;
ŒŒ% &
}
ŒŒ' (
public
–– 
string
–– 
ShortText10
–– !
{
––" #
get
––$ '
;
––' (
set
––) ,
;
––, -
}
––. /
private
““ 
bool
““ 
selected
““ 
;
““ 
public
”” 
bool
”” 
Selected
”” 
{
‘‘ 	
get
’’ 
{
’’ 
return
’’ 
selected
’’ !
;
’’! "
}
’’# $
set
÷÷ 
{
◊◊ 
selected
ÿÿ 
=
ÿÿ 
value
ÿÿ  
;
ÿÿ  !
OnPropertyChanged
ŸŸ !
(
ŸŸ! "
)
ŸŸ" #
;
ŸŸ# $
}
⁄⁄ 
}
€€ 	
public
›› 
string
›› 

ShortText9
››  
{
››! "
get
››# &
;
››& '
set
››( +
;
››+ ,
}
››- .
public
ﬂﬂ 
event
ﬂﬂ )
PropertyChangedEventHandler
ﬂﬂ 0
PropertyChanged
ﬂﬂ1 @
;
ﬂﬂ@ A
	protected
‡‡ 
virtual
‡‡ 
void
‡‡ 
OnPropertyChanged
‡‡ 0
(
‡‡0 1
[
‡‡1 2
CallerMemberName
‡‡2 B
]
‡‡B C
string
‡‡D J
propertyName
‡‡K W
=
‡‡X Y
null
‡‡Z ^
)
‡‡^ _
{
·· 	
PropertyChanged
‚‚ 
?
‚‚ 
.
‚‚ 
Invoke
‚‚ #
(
‚‚# $
this
‚‚$ (
,
‚‚( )
new
‚‚* -&
PropertyChangedEventArgs
‚‚. F
(
‚‚F G
propertyName
‚‚G S
)
‚‚S T
)
‚‚T U
;
‚‚U V
}
„„ 	
}
‰‰ 
}ÂÂ ˆ!
oC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\NotificationsPageViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class &
NotificationsPageViewModel +
:, -
BaseViewModel. ;
{ 
NotificationService 
service #
;# $
string 
listMessage 
= 
$str ?
;? @
public 
string 
ListMessage !
{ 	
get 
{ 
return 
listMessage $
;$ %
}& '
set 
{ 
SetProperty 
( 
ref !
listMessage" -
,- .
value/ 4
)4 5
;5 6
}7 8
} 	
public  
ObservableCollection #
<# $
Notification$ 0
>0 1
NotificationsList2 C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
Command 
LoadItemsCommand '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public &
NotificationsPageViewModel )
() *
)* +
{ 	
service   
=   
new   
NotificationService   -
(  - .
)  . /
;  / 0
NotificationsList"" 
="" 
new""  # 
ObservableCollection""$ 8
<""8 9
Notification""9 E
>""E F
(""F G
)""G H
;""H I
LoadItemsCommand$$ 
=$$ 
new$$ "
Command$$# *
($$* +
async$$+ 0
($$1 2
)$$2 3
=>$$4 6
await$$7 <#
ExecuteLoadItemsCommand$$= T
($$T U
)$$U V
)$$V W
;$$W X
}%% 	
public'' 
async'' 
Task'' #
ExecuteLoadItemsCommand'' 1
(''1 2
)''2 3
{(( 	
if)) 
()) 
IsBusy)) 
))) 
return** 
;** 
IsBusy,, 
=,, 
true,, 
;,, 
try.. 
{// 
NotificationsList00 !
.00! "
Clear00" '
(00' (
)00( )
;00) *
var11 
notifications11 !
=11" #
await11$ )
service11* 1
.111 2
GetNotifications112 B
(11B C
UserConfigs11C N
.11N O
USER_ID11O V
)11V W
;11W X
if33 
(33 
notifications33 !
==33" $
null33% )
||33* ,
notifications33- :
.33: ;
Count33; @
(33@ A
)33A B
==33C E
$num33F G
)33G H
{44 
HasNoListItem55 !
=55" #
true55$ (
;55( )
}66 
else77 
{88 
foreach99 
(99 
var99  
notification99! -
in99. 0
notifications991 >
)99> ?
{:: 
NotificationsList;; )
.;;) *
Add;;* -
(;;- .
notification;;. :
);;: ;
;;;; <
}<< 
if>> 
(>> 
NotificationsList>> )
==>>* ,
null>>- 1
||>>2 4
NotificationsList>>5 F
.>>F G
Count>>G L
==>>M O
$num>>P Q
)>>Q R
{?? 
HasNoListItem@@ %
=@@& '
true@@( ,
;@@, -
}AA 
elseBB 
{CC 
HasNoListItemDD %
=DD& '
falseDD( -
;DD- .
}EE 
}FF 
}GG 
catchHH 
(HH 
	ExceptionHH 
exHH 
)HH  
{II 
DebugJJ 
.JJ 
	WriteLineJJ 
(JJ  
exJJ  "
)JJ" #
;JJ# $
}KK 
finallyLL 
{MM 
IsBusyNN 
=NN 
falseNN 
;NN 
}OO 
}PP 	
}QQ 
}RR ©I
fC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\MainPageViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{ 
public 

class 
MainPageViewModel "
:# $
BaseViewModel% 2
{ 
WorkOrderService 
	woService "
;" #
NotificationService 
notiService '
;' (
public 
bool 
	IsPending 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
true. 2
;2 3
public 
string 
CurrentUserName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
$str6 8
;8 9
string 
listMessage 
= 
$str /
;/ 0
public 
string 
ListMessage !
{ 	
get 
{ 
return 
listMessage $
;$ %
}& '
set 
{ 
SetProperty 
( 
ref !
listMessage" -
,- .
value/ 4
)4 5
;5 6
}7 8
} 	
int!! 
notificationCount!! 
=!! 
$num!!  !
;!!! "
public"" 
int"" 
NotificationCount"" $
{## 	
get$$ 
{$$ 
return$$ 
notificationCount$$ *
;$$* +
}$$, -
set%% 
{%% 
SetProperty%% 
(%% 
ref%% !
notificationCount%%" 3
,%%3 4
value%%5 :
)%%: ;
;%%; <
}%%= >
}&& 	
public(( 
Int64(( 
PendingTaskCount(( %
{((& '
get((( +
;((+ ,
set((- 0
;((0 1
}((2 3
=((4 5
$num((6 7
;((7 8
public)) 
Int64)) 
CompletedTaskCount)) '
{))( )
get))* -
;))- .
set))/ 2
;))2 3
}))4 5
=))6 7
$num))8 9
;))9 :
public,,  
ObservableCollection,, #
<,,# $
	WorkOrder,,$ -
>,,- .
CurrentTasks,,/ ;
{,,< =
get,,> A
;,,A B
set,,C F
;,,F G
},,H I
public--  
ObservableCollection-- #
<--# $
	WorkOrder--$ -
>--- .
PendingTasks--/ ;
{--< =
get--> A
;--A B
set--C F
;--F G
}--H I
public..  
ObservableCollection.. #
<..# $
	WorkOrder..$ -
>..- .
CompletedTasks../ =
{..> ?
get..@ C
;..C D
set..E H
;..H I
}..J K
public00 
Command00 !
LoadWorkOrdersCommand00 ,
{00- .
get00/ 2
;002 3
set004 7
;007 8
}009 :
public22 
MainPageViewModel22  
(22  !
)22! "
{33 	
CurrentUserName44 
=44 
UserConfigs44 )
.44) *
Name44* .
;44. /
	woService66 
=66 
new66 
WorkOrderService66 ,
(66, -
)66- .
;66. /
notiService77 
=77 
new77 
NotificationService77 1
(771 2
)772 3
;773 4
CurrentTasks99 
=99 
new99  
ObservableCollection99 3
<993 4
	WorkOrder994 =
>99= >
(99> ?
)99? @
;99@ A
PendingTasks;; 
=;; 
new;;  
ObservableCollection;; 3
<;;3 4
	WorkOrder;;4 =
>;;= >
(;;> ?
);;? @
;;;@ A
CompletedTasks== 
=== 
new==   
ObservableCollection==! 5
<==5 6
	WorkOrder==6 ?
>==? @
(==@ A
)==A B
;==B C!
LoadWorkOrdersCommand?? !
=??" #
new??$ '
Command??( /
(??/ 0
async??0 5
(??6 7
)??7 8
=>??9 ;
await??< A(
ExecuteLoadWorkOrdersCommand??B ^
(??^ _
)??_ `
)??` a
;??a b
}@@ 	
asyncBB 
TaskBB (
ExecuteLoadWorkOrdersCommandBB /
(BB/ 0
)BB0 1
{CC 	
ifDD 
(DD 
IsBusyDD 
)DD 
returnEE 
;EE 
IsBusyGG 
=GG 
trueGG 
;GG 
tryII 
{JJ 
varKK 
countKK 
=KK 
awaitKK !
notiServiceKK" -
.KK- . 
GetNotificationCountKK. B
(KKB C
)KKC D
;KKD E
thisMM 
.MM 
NotificationCountMM &
=MM' (
countMM) .
;MM. /
PendingTasksOO 
.OO 
ClearOO "
(OO" #
)OO# $
;OO$ %
CompletedTasksPP 
.PP 
ClearPP $
(PP$ %
)PP% &
;PP& '
varRR 

workOrdersRR 
=RR  
awaitRR! &
	woServiceRR' 0
.RR0 1
GetRR1 4
(RR4 5
nullRR5 9
)RR9 :
;RR: ;
ifTT 
(TT 

workOrdersTT 
==TT !
nullTT" &
||TT' )

workOrdersTT* 4
.TT4 5
CountTT5 :
(TT: ;
)TT; <
==TT= ?
$numTT@ A
)TTA B
{UU 
HasNoListItemVV !
=VV" #
trueVV$ (
;VV( )
}WW 
elseXX 
{YY 
HasNoListItemZZ !
=ZZ" #
falseZZ$ )
;ZZ) *
foreach\\ 
(\\ 
var\\  
	workOrder\\! *
in\\+ -

workOrders\\. 8
)\\8 9
{]] 
if^^ 
(^^ 
	workOrder^^ %
.^^% &
ServiceJobStatusStr^^& 9
==^^: <%
ServiceJobStatusConstants^^= V
.^^V W
SeviceJobStatus^^W f
.^^f g
	Submitted^^g p
.^^p q
ToString^^q y
(^^y z
)^^z {
)^^{ |
{__ 
CompletedTasks`` *
.``* +
Add``+ .
(``. /
	workOrder``/ 8
)``8 9
;``9 :
}aa 
elsebb 
{cc 
PendingTasksdd (
.dd( )
Adddd) ,
(dd, -
	workOrderdd- 6
)dd6 7
;dd7 8
}ee 
}ff 
CurrentTasksii  
.ii  !
Clearii! &
(ii& '
)ii' (
;ii( )
ifkk 
(kk 
thiskk 
.kk 
	IsPendingkk &
)kk& '
{ll 
ifmm 
(mm 
PendingTasksmm (
!=mm) +
nullmm, 0
||mm1 3
PendingTasksmm4 @
.mm@ A
CountmmA F
>mmG H
$nummmI J
)mmJ K
{nn 
foreachoo #
(oo$ %
varoo% (
orderoo) .
inoo/ 1
PendingTasksoo2 >
)oo> ?
{pp 
CurrentTasksqq  ,
.qq, -
Addqq- 0
(qq0 1
orderqq1 6
)qq6 7
;qq7 8
}rr 
}ss 
}tt 
elseuu 
{vv 
ifww 
(ww 
CompletedTasksww *
!=ww+ -
nullww. 2
||ww3 5
CompletedTasksww6 D
.wwD E
CountwwE J
>wwK L
$numwwM N
)wwN O
{xx 
foreachyy #
(yy$ %
varyy% (
orderyy) .
inyy/ 1
CompletedTasksyy2 @
)yy@ A
{zz 
CurrentTasks{{  ,
.{{, -
Add{{- 0
({{0 1
order{{1 6
){{6 7
;{{7 8
}|| 
}}} 
}~~ 
if
ÄÄ 
(
ÄÄ 
CurrentTasks
ÄÄ #
.
ÄÄ# $
Count
ÄÄ$ )
==
ÄÄ* ,
$num
ÄÄ- .
)
ÄÄ. /
{
ÅÅ 
HasNoListItem
ÇÇ %
=
ÇÇ& '
true
ÇÇ( ,
;
ÇÇ, -
if
ÑÑ 
(
ÑÑ 
this
ÑÑ 
.
ÑÑ  
	IsPending
ÑÑ  )
)
ÑÑ) *
{
ÖÖ 
this
ÜÜ  
.
ÜÜ  !
ListMessage
ÜÜ! ,
=
ÜÜ- .
$str
ÜÜ/ A
;
ÜÜA B
}
áá 
else
àà 
{
ââ 
this
ää  
.
ää  !
ListMessage
ää! ,
=
ää- .
$str
ää/ B
;
ääB C
}
ãã 
}
åå 
}
çç 
}
éé 
catch
èè 
(
èè 
	Exception
èè 
ex
èè 
)
èè  
{
êê 
Debug
ëë 
.
ëë 
	WriteLine
ëë 
(
ëë  
ex
ëë  "
)
ëë" #
;
ëë# $
}
íí 
finally
ìì 
{
îî 
IsBusy
ïï 
=
ïï 
false
ïï 
;
ïï 
}
ññ 
}
óó 	
}
ôô 
}öö ﬂ
bC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\ViewModels\BaseViewModel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

ViewModels! +
{		 
public

 

class

 
BaseViewModel

 
:

  "
INotifyPropertyChanged

! 7
{ 
bool 
isBusy 
= 
false 
; 
public 
bool 
IsBusy 
{ 	
get 
{ 
return 
isBusy 
;  
}! "
set 
{ 
SetProperty 
( 
ref !
isBusy" (
,( )
value* /
)/ 0
;0 1
}2 3
} 	
string 
title 
= 
string 
. 
Empty #
;# $
public 
string 
Title 
{ 	
get 
{ 
return 
title 
; 
}  !
set 
{ 
SetProperty 
( 
ref !
title" '
,' (
value) .
). /
;/ 0
}1 2
} 	
bool 
hasNoListItem 
= 
false "
;" #
public 
bool 
HasNoListItem !
{ 	
get 
{ 
return 
hasNoListItem &
;& '
}( )
set   
{   
SetProperty   
(   
ref   !
hasNoListItem  " /
,  / 0
value  1 6
)  6 7
;  7 8
}  9 :
}!! 	
	protected$$ 
bool$$ 
SetProperty$$ "
<$$" #
T$$# $
>$$$ %
($$% &
ref$$& )
T$$* +
backingStore$$, 8
,$$8 9
T$$: ;
value$$< A
,$$A B
[%% 
CallerMemberName%% 
]%% 
string%% $
propertyName%%% 1
=%%2 3
$str%%4 6
,%%6 7
Action&& 
	onChanged&& 
=&& 
null&& #
)&&# $
{'' 	
if(( 
((( 
EqualityComparer((  
<((  !
T((! "
>((" #
.((# $
Default(($ +
.((+ ,
Equals((, 2
(((2 3
backingStore((3 ?
,((? @
value((A F
)((F G
)((G H
return)) 
false)) 
;)) 
backingStore++ 
=++ 
value++  
;++  !
	onChanged,, 
?,, 
.,, 
Invoke,, 
(,, 
),, 
;,,  
OnPropertyChanged-- 
(-- 
propertyName-- *
)--* +
;--+ ,
return.. 
true.. 
;.. 
}// 	
public22 
event22 '
PropertyChangedEventHandler22 0
PropertyChanged221 @
;22@ A
	protected33 
void33 
OnPropertyChanged33 (
(33( )
[33) *
CallerMemberName33* :
]33: ;
string33< B
propertyName33C O
=33P Q
$str33R T
)33T U
{44 	
var55 
changed55 
=55 
PropertyChanged55 )
;55) *
if66 
(66 
changed66 
==66 
null66 
)66  
return77 
;77 
changed99 
.99 
Invoke99 
(99 
this99 
,99  
new99! $$
PropertyChangedEventArgs99% =
(99= >
propertyName99> J
)99J K
)99K L
;99L M
}:: 	
}<< 
}== Ω4
pC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Repositories\WorkOrderStatusRepository.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Repositories! -
{		 
public

 

class

 %
WorkOrderStatusRepository

 *
{ 
private !
SQLiteAsyncConnection %
	connAsync& /
;/ 0
private 
WorkOrderStatus 
currentStatus  -
;- .
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public %
WorkOrderStatusRepository (
(( )
string) /
dbPath0 6
)6 7
{ 	
	connAsync 
= 
new !
SQLiteAsyncConnection 1
(1 2
dbPath2 8
)8 9
;9 :
	connAsync 
. 
CreateTableAsync &
<& '
WorkOrderStatus' 6
>6 7
(7 8
)8 9
.9 :
Wait: >
(> ?
)? @
;@ A
} 	
public 
async 
Task #
AddWorkOrderStatusAsync 1
(1 2
WorkOrderStatus2 A
woStatusB J
)J K
{ 	
int 
result 
= 
$num 
; 
try 
{ 
result 
= 
await 
	connAsync (
.( )
InsertAsync) 4
(4 5
woStatus5 =
)= >
;> ?
StatusMessage 
= 
string  &
.& '
Format' -
(- .
$str. M
,M N
resultO U
,U V
woStatusW _
._ `
WorkOrderId` k
)k l
;l m
}   
catch!! 
(!! 
	Exception!! 
ex!! 
)!!  
{"" 
StatusMessage## 
=## 
string##  &
.##& '
Format##' -
(##- .
$str##. V
,##V W
woStatus##X `
.##` a
WorkOrderId##a l
,##l m
ex##n p
.##p q
Message##q x
)##x y
;##y z
}$$ 
}%% 	
public'' 
async'' 
Task'' &
UpdateWorkOrderStatusAsync'' 4
(''4 5
WorkOrderStatus''5 D
woStatus''E M
)''M N
{(( 	
int)) 
result)) 
=)) 
$num)) 
;)) 
try** 
{++ 
result,, 
=,, 
await,, 
	connAsync,, (
.,,( )
UpdateAsync,,) 4
(,,4 5
woStatus,,5 =
),,= >
;,,> ?
StatusMessage.. 
=.. 
string..  &
...& '
Format..' -
(..- .
$str... O
,..O P
result..Q W
,..W X
woStatus..Y a
...a b
WorkOrderId..b m
)..m n
;..n o
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
StatusMessage22 
=22 
string22  &
.22& '
Format22' -
(22- .
$str22. Y
,22Y Z
woStatus22[ c
.22c d
WorkOrderId22d o
,22o p
ex22q s
.22s t
Message22t {
)22{ |
;22| }
}33 
}55 	
public77 
async77 
Task77 
<77 
WorkOrderStatus77 )
>77) *'
GetWorkOrderStatusByIdAsync77+ F
(77F G
Int6477G L
woId77M Q
,77Q R
Int6477S X
sjId77Y ]
)77] ^
{88 	
try99 
{:: 
WorkOrderStatus;; 
woStatus;;  (
=;;) *
await;;+ 0
	connAsync;;1 :
.;;: ;
Table;;; @
<;;@ A
WorkOrderStatus;;A P
>;;P Q
(;;Q R
);;R S
.;;S T
Where;;T Y
(;;Y Z
x;;Z [
=>;;\ ^
x;;_ `
.;;` a
WorkOrderId;;a l
==;;m o
woId;;p t
&&;;u w
x;;x y
.;;y z
serviceJobId	;;z Ü
==
;;á â
sjId
;;ä é
)
;;è ê
.
;;ê ë!
FirstOrDefaultAsync
;;ë §
(
;;§ •
)
;;• ¶
;
;;¶ ß
if<< 
(<< 
!<< 
(<< 
woStatus<< 
==<< !
null<<" &
)<<& '
)<<' (
{== 
return>> 
woStatus>> #
;>># $
}?? 
else@@ 
{AA 
returnBB 
nullBB 
;BB  
}CC 
}DD 
catchEE 
(EE 
	ExceptionEE 
exEE 
)EE  
{FF 
StatusMessageGG 
=GG 
stringGG  &
.GG& '
FormatGG' -
(GG- .
$strGG. G
,GGG H
exGGI K
.GGK L
MessageGGL S
)GGS T
;GGT U
returnHH 
nullHH 
;HH 
}II 
}JJ 	
publicLL 
asyncLL 
TaskLL (
UpdateCustomerSignatureStateLL 6
(LL6 7
Int64LL7 <
woIdLL= A
,LLA B
Int64LLC H
sjIdLLI M
)LLM N
{MM 	
currentStatusNN 
=NN 
awaitNN !
	connAsyncNN" +
.NN+ ,
TableNN, 1
<NN1 2
WorkOrderStatusNN2 A
>NNA B
(NNB C
)NNC D
.NND E
WhereNNE J
(NNJ K
xNNK L
=>NNM O
xNNP Q
.NNQ R
WorkOrderIdNNR ]
==NN^ `
woIdNNa e
&&NNf h
xNNi j
.NNj k
serviceJobIdNNk w
==NNx z
sjIdNN{ 
)	NN Ä
.
NNÄ Å!
FirstOrDefaultAsync
NNÅ î
(
NNî ï
)
NNï ñ
;
NNñ ó
ifPP 
(PP 
currentStatusPP 
==PP  
nullPP! %
)PP% &
{QQ 
returnRR 
;RR 
}SS 
currentStatusUU 
.UU 
isSignedByCustomerUU ,
=UU- .
trueUU/ 3
;UU3 4
awaitWW 
	connAsyncWW 
.WW 
UpdateAsyncWW '
(WW' (
currentStatusWW( 5
)WW5 6
;WW6 7
}XX 	
}YY 
}ZZ ∞0
eC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Repositories\UserRepository.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Repositories! -
{		 
public

 

class

 
UserRepository

 
{ 
private !
SQLiteAsyncConnection %
	connAsync& /
;/ 0
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
UserRepository 
( 
string $
dbPath% +
)+ ,
{ 	
	connAsync 
= 
new !
SQLiteAsyncConnection 1
(1 2
dbPath2 8
)8 9
;9 :
	connAsync 
. 
CreateTableAsync &
<& '
User' +
>+ ,
(, -
)- .
.. /
Wait/ 3
(3 4
)4 5
;5 6
} 	
public 
async 
Task 
AddUserAsync &
(& '
User' +
user, 0
)0 1
{ 	
int 
result 
= 
$num 
; 
try 
{ 
result 
= 
await 
	connAsync (
.( )
InsertAsync) 4
(4 5
user5 9
)9 :
;: ;
StatusMessage 
= 
string  &
.& '
Format' -
(- .
$str. M
,M N
resultO U
,U V
userW [
.[ \
User_Id\ c
)c d
;d e
} 
catch 
( 
	Exception 
ex 
)  
{ 
StatusMessage   
=   
string    &
.  & '
Format  ' -
(  - .
$str  . V
,  V W
user  X \
.  \ ]
User_Id  ] d
,  d e
ex  f h
.  h i
Message  i p
)  p q
;  q r
}!! 
}"" 	
public$$ 
async$$ 
Task$$ 
UpdateUserAsync$$ )
($$) *
User$$* .
user$$/ 3
)$$3 4
{%% 	
int&& 
result&& 
=&& 
$num&& 
;&& 
try'' 
{(( 
result)) 
=)) 
await)) 
	connAsync)) (
.))( )
UpdateAsync))) 4
())4 5
user))5 9
)))9 :
;)): ;
StatusMessage++ 
=++ 
string++  &
.++& '
Format++' -
(++- .
$str++. O
,++O P
result++Q W
,++W X
user++Y ]
.++] ^
User_Id++^ e
)++e f
;++f g
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)--  
{.. 
StatusMessage// 
=// 
string//  &
.//& '
Format//' -
(//- .
$str//. Y
,//Y Z
user//[ _
.//_ `
User_Id//` g
,//g h
ex//i k
.//k l
Message//l s
)//s t
;//t u
}00 
}22 	
public44 
async44 
Task44 
<44 
User44 
>44 
GetUserByIdAsync44  0
(440 1
Int64441 6
User_Id447 >
)44> ?
{55 	
try66 
{77 
User88 
user88 
=88 
await88 !
	connAsync88" +
.88+ ,
Table88, 1
<881 2
User882 6
>886 7
(887 8
)888 9
.889 :
Where88: ?
(88? @
x88@ A
=>88B D
x88E F
.88F G
User_Id88G N
==88O Q
User_Id88R Y
)88Y Z
.88Z [
FirstOrDefaultAsync88[ n
(88n o
)88o p
;88p q
if99 
(99 
!99 
(99 
user99 
==99 
null99 "
)99" #
)99# $
{:: 
return;; 
user;; 
;;;  
}<< 
else== 
{>> 
return?? 
null?? 
;??  
}@@ 
}AA 
catchBB 
(BB 
	ExceptionBB 
exBB 
)BB  
{CC 
StatusMessageDD 
=DD 
stringDD  &
.DD& '
FormatDD' -
(DD- .
$strDD. A
,DDA B
exDDC E
.DDE F
MessageDDF M
)DDM N
;DDN O
returnEE 
nullEE 
;EE 
}FF 
}GG 	
publicII 
asyncII 
TaskII 
<II 
UserII 
>II  
GetLoggedInUserAsyncII  4
(II4 5
)II5 6
{JJ 	
tryKK 
{LL 
returnMM 
awaitMM 
	connAsyncMM &
.MM& '
TableMM' ,
<MM, -
UserMM- 1
>MM1 2
(MM2 3
)MM3 4
.MM4 5
WhereMM5 :
(MM: ;
xMM; <
=>MM= ?
xMM@ A
.MMA B

isSignedInMMB L
==MMM O
trueMMP T
)MMT U
.MMU V
FirstOrDefaultAsyncMMV i
(MMi j
)MMj k
;MMk l
}NN 
catchOO 
(OO 
	ExceptionOO 
exOO 
)OO  
{PP 
StatusMessageQQ 
=QQ 
stringQQ  &
.QQ& '
FormatQQ' -
(QQ- .
$strQQ. F
,QQF G
exQQH J
.QQJ K
MessageQQK R
)QQR S
;QQS T
}RR 
returnTT 
newTT 
UserTT 
(TT 
)TT 
{TT 

isSignedInTT  *
=TT+ ,
falseTT- 2
}TT3 4
;TT4 5
}VV 	
}WW 
}XX ¢<
nC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Repositories\ServerDetailsRepository.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Repositories! -
{		 
public

 

class

 #
ServerDetailsRepository

 (
{ 
private !
SQLiteAsyncConnection %
	connAsync& /
;/ 0
private 
ServerDetails 
currentDetail +
;+ ,
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public #
ServerDetailsRepository &
(& '
string' -
dbPath. 4
)4 5
{ 	
	connAsync 
= 
new !
SQLiteAsyncConnection 1
(1 2
dbPath2 8
)8 9
;9 :
	connAsync 
. 
CreateTableAsync &
<& '
ServerDetails' 4
>4 5
(5 6
)6 7
.7 8
Wait8 <
(< =
)= >
;> ?
} 	
public 
async 
Task !
AddServerDetailsAsync /
(/ 0
ServerDetails0 =
details> E
)E F
{ 	
int 
result 
= 
$num 
; 
try 
{ (
UpdateServerInUseStatusAsync ,
(, -
)- .
;. /
result 
= 
await 
	connAsync (
.( )
InsertAsync) 4
(4 5
details5 <
)< =
;= >
StatusMessage!! 
=!! 
string!!  &
.!!& '
Format!!' -
(!!- .
$str!!. M
,!!M N
result!!O U
,!!U V
details!!W ^
.!!^ _
IP!!_ a
)!!a b
;!!b c
}"" 
catch## 
(## 
	Exception## 
ex## 
)##  
{$$ 
StatusMessage%% 
=%% 
string%%  &
.%%& '
Format%%' -
(%%- .
$str%%. V
,%%V W
details%%X _
.%%_ `
IP%%` b
,%%b c
ex%%d f
.%%f g
Message%%g n
)%%n o
;%%o p
}&& 
}'' 	
public)) 
async)) 
Task)) $
UpdateServerDetailsAsync)) 2
())2 3
ServerDetails))3 @
details))A H
)))H I
{** 	
int++ 
result++ 
=++ 
$num++ 
;++ 
try,, 
{-- (
UpdateServerInUseStatusAsync.. ,
(.., -
)..- .
;... /
result00 
=00 
await00 
	connAsync00 (
.00( )
UpdateAsync00) 4
(004 5
details005 <
)00< =
;00= >
StatusMessage22 
=22 
string22  &
.22& '
Format22' -
(22- .
$str22. O
,22O P
result22Q W
,22W X
details22Y `
.22` a
IP22a c
)22c d
;22d e
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 
StatusMessage66 
=66 
string66  &
.66& '
Format66' -
(66- .
$str66. Y
,66Y Z
details66[ b
.66b c
IP66c e
,66e f
ex66g i
.66i j
Message66j q
)66q r
;66r s
}77 
}99 	
public;; 
async;; 
Task;; 
<;; 
ServerDetails;; '
>;;' (%
GetServerDetailsByIPAsync;;) B
(;;B C
string;;C I
IP;;J L
);;L M
{<< 	
try== 
{>> 
ServerDetails?? 
details?? %
=??& '
await??( -
	connAsync??. 7
.??7 8
Table??8 =
<??= >
ServerDetails??> K
>??K L
(??L M
)??M N
.??N O
Where??O T
(??T U
x??U V
=>??W Y
x??Z [
.??[ \
IP??\ ^
.??^ _
Equals??_ e
(??e f
IP??f h
)??h i
)??i j
.??j k
FirstOrDefaultAsync??k ~
(??~ 
)	?? Ä
;
??Ä Å
if@@ 
(@@ 
!@@ 
(@@ 
details@@ 
==@@  
null@@! %
)@@% &
)@@& '
{AA 
returnBB 
detailsBB "
;BB" #
}CC 
elseDD 
{EE 
returnFF 
nullFF 
;FF  
}GG 
}HH 
catchII 
(II 
	ExceptionII 
exII 
)II  
{JJ 
StatusMessageKK 
=KK 
stringKK  &
.KK& '
FormatKK' -
(KK- .
$strKK. A
,KKA B
exKKC E
.KKE F
MessageKKF M
)KKM N
;KKN O
returnLL 
nullLL 
;LL 
}MM 
}NN 	
publicPP 
asyncPP 
voidPP (
UpdateServerInUseStatusAsyncPP 6
(PP6 7
)PP7 8
{QQ 	
currentDetailRR 
=RR 
awaitRR !
	connAsyncRR" +
.RR+ ,
TableRR, 1
<RR1 2
ServerDetailsRR2 ?
>RR? @
(RR@ A
)RRA B
.RRB C
WhereRRC H
(RRH I
xRRI J
=>RRK M
xRRN O
.RRO P
inUseRRP U
==RRV X
trueRRY ]
)RR] ^
.RR^ _
FirstOrDefaultAsyncRR_ r
(RRr s
)RRs t
;RRt u
ifTT 
(TT 
!TT 
(TT 
currentDetailTT 
==TT  "
nullTT# '
)TT' (
)TT( )
{UU 
currentDetailVV 
.VV 
inUseVV #
=VV$ %
falseVV& +
;VV+ ,
}WW 
awaitYY 
	connAsyncYY 
.YY 
UpdateAsyncYY '
(YY' (
currentDetailYY( 5
)YY5 6
;YY6 7
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ 
ServerDetails\\ '
>\\' (!
GetCurrentServerAsync\\) >
(\\> ?
)\\? @
{]] 	
try^^ 
{__ 
return`` 
await`` 
	connAsync`` &
.``& '
Table``' ,
<``, -
ServerDetails``- :
>``: ;
(``; <
)``< =
.``= >
Where``> C
(``C D
x``D E
=>``F H
x``I J
.``J K
inUse``K P
==``Q S
true``T X
)``X Y
.``Y Z
FirstOrDefaultAsync``Z m
(``m n
)``n o
;``o p
}aa 
catchbb 
(bb 
	Exceptionbb 
exbb 
)bb  
{cc 
StatusMessagedd 
=dd 
stringdd  &
.dd& '
Formatdd' -
(dd- .
$strdd. F
,ddF G
exddH J
.ddJ K
MessageddK R
)ddR S
;ddS T
}ee 
returngg 
newgg 
ServerDetailsgg $
(gg$ %
)gg% &
{gg' (
inUsegg) .
=gg/ 0
falsegg1 6
}gg7 8
;gg8 9
}ii 	
}jj 
}kk ·
nC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Repositories\DeviceDetailsRepository.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Repositories! -
{		 
public

 

class

 #
DeviceDetailsRepository

 (
{ 
private !
SQLiteAsyncConnection %
	connAsync& /
;/ 0
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public #
DeviceDetailsRepository &
(& '
string' -
dbPath. 4
)4 5
{ 	
	connAsync 
= 
new !
SQLiteAsyncConnection 1
(1 2
dbPath2 8
)8 9
;9 :
	connAsync 
. 
CreateTableAsync &
<& '
DeviceDetails' 4
>4 5
(5 6
)6 7
.7 8
Wait8 <
(< =
)= >
;> ?
} 	
public 
async 
Task !
AddDeviceDetailsAsync /
(/ 0
DeviceDetails0 =
details> E
)E F
{ 	
int 
result 
= 
$num 
; 
try 
{ 
result 
= 
await 
	connAsync (
.( )
InsertAsync) 4
(4 5
details5 <
)< =
;= >
StatusMessage 
= 
string  &
.& '
Format' -
(- .
$str. M
,M N
resultO U
,U V
detailsW ^
.^ _
devToken_ g
)g h
;h i
} 
catch   
(   
	Exception   
ex   
)    
{!! 
StatusMessage"" 
="" 
string""  &
.""& '
Format""' -
(""- .
$str"". V
,""V W
details""X _
.""_ `
devToken""` h
,""h i
ex""j l
.""l m
Message""m t
)""t u
;""u v
}## 
}$$ 	
public&& 
async&& 
Task&& 
<&& 
DeviceDetails&& '
>&&' (!
GetDeviceDetailsAsync&&) >
(&&> ?
Int64&&? D
Id&&E G
)&&G H
{'' 	
try(( 
{)) 
DeviceDetails** 
details** %
=**& '
await**( -
	connAsync**. 7
.**7 8
Table**8 =
<**= >
DeviceDetails**> K
>**K L
(**L M
)**M N
.**N O
Where**O T
(**T U
x**U V
=>**W Y
x**Z [
.**[ \
Id**\ ^
.**^ _
Equals**_ e
(**e f
Id**f h
)**h i
)**i j
.**j k
FirstOrDefaultAsync**k ~
(**~ 
)	** Ä
;
**Ä Å
if++ 
(++ 
!++ 
(++ 
details++ 
==++  
null++! %
)++% &
)++& '
{,, 
return-- 
details-- "
;--" #
}.. 
else// 
{00 
return11 
null11 
;11  
}22 
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 
StatusMessage66 
=66 
string66  &
.66& '
Format66' -
(66- .
$str66. =
,66= >
ex66? A
.66A B
Message66B I
)66I J
;66J K
return77 
null77 
;77 
}88 
}99 	
};; 
}<< ‘
]C:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\Interfaces\IMessage.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !

Interfaces! +
{ 
public 

	interface 
IMessage 
{ 
void		 
	LongAlert		 
(		 
string		 
messsage		 &
)		& '
;		' (
void

 

ShortAlert

 
(

 
string

 
message

 &
)

& '
;

' (
} 
} ª
eC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\CustomRenderers\CustomLabel.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
CustomRenderers! 0
{ 
public 

class 
CustomLabel 
: 
Label $
{		 
public

 
static

 
readonly

 
BindableProperty

 /&
CurvedCornerRadiusProperty

0 J
=

K L
BindableProperty

M ]
.

] ^
Create

^ d
(

d e
nameof

e k
(

k l
CurvedCornerRadius

l ~
)

~ 
,	

 Ä
typeof


Ä Ü
(


Ü á
double


á ç
)


ç é
,


é è
typeof


è ï
(


ï ñ
CustomLabel


ñ °
)


° ¢
,


¢ £
$num


£ ß
)


ß ®
;


® ©
public 
double 
CurvedCornerRadius (
{ 	
get 
{ 
return 
( 
double  
)  !
GetValue! )
() *&
CurvedCornerRadiusProperty* D
)D E
;E F
}G H
set 
{ 
SetValue 
( &
CurvedCornerRadiusProperty 5
,5 6
value7 <
)< =
;= >
}? @
} 	
public 
static 
readonly 
BindableProperty /)
CurvedBackgroundColorProperty0 M
=N O
BindablePropertyP `
.` a
Createa g
(g h
nameofh n
(n o"
CurvedBackgroundColor	o Ñ
)
Ñ Ö
,
Ö Ü
typeof
Ü å
(
å ç
Color
ç í
)
í ì
,
ì î
typeof
î ö
(
ö õ
CustomLabel
õ ¶
)
¶ ß
,
ß ®
Color
® ≠
.
≠ Æ
Default
Æ µ
)
µ ∂
;
∂ ∑
public 
Color !
CurvedBackgroundColor *
{ 	
get 
{ 
return 
( 
Color 
)  
GetValue  (
(( ))
CurvedBackgroundColorProperty) F
)F G
;G H
}I J
set 
{ 
SetValue 
( )
CurvedBackgroundColorProperty 8
,8 9
value: ?
)? @
;@ A
}B C
} 	
} 
} æ
RC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam\App.xaml.cs
	namespace

 	
EngagerMobile


 
.

 
Mariteam

  
{ 
public 
partial 
class 
App 
: 
Application '
{ 
public 
static 
UserRepository $
UserRepo% -
{. /
get0 3
;3 4
private5 <
set= @
;@ A
}B C
public 
static #
ServerDetailsRepository -

ServerRepo. 8
{9 :
get; >
;> ?
private@ G
setH K
;K L
}M N
public 
static #
DeviceDetailsRepository -

DeviceRepo. 8
{9 :
get; >
;> ?
private@ G
setH K
;K L
}M N
public 
static %
WorkOrderStatusRepository /
woStatusRepo0 <
{= >
get? B
;B C
privateD K
setL O
;O P
}Q R
public 
static 
string 
Token "
=# $
$str% '
;' (
public 
App 
( 
string 
dbPath !
,! "
string# )
token* /
)/ 0
{ 
InitializeComponent 
( 
) 
; 
Token 
= 
token 
; 
UserRepo 
= 
new 
UserRepository )
() *
dbPath* 0
)0 1
;1 2

ServerRepo 
= 
new #
ServerDetailsRepository 4
(4 5
dbPath5 ;
); <
;< =

DeviceRepo   
=   
new   #
DeviceDetailsRepository   4
(  4 5
dbPath  5 ;
)  ; <
;  < =
woStatusRepo!! 
=!! 
new!! %
WorkOrderStatusRepository!! 8
(!!8 9
dbPath!!9 ?
)!!? @
;!!@ A
MainPage## 
=## 
new## 
NavigationPage## )
(##) *
new##* -
LaunchScreenPage##. >
(##> ?
)##? @
)##@ A
;##A B
}$$ 	
	protected&& 
override&& 
void&& 
OnStart&& !
(&&" #
)&&# $
{'' 
	AppCenter** 
.** 
Start** 
(** 
$str** B
,**B C
typeof**D J
(**J K

Distribute**K U
)**U V
)**V W
;**W X
}.. 
	protected00 
override00 
void00 
OnSleep00 !
(00" #
)00# $
{11 
}33 
	protected55 
override55 
void55 
OnResume55 "
(55# $
)55$ %
{66 
}88 
}99 
}:: 
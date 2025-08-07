package crc64113b169d83cb5e16;


public class MyFirebaseIDService
	extends com.google.firebase.iid.FirebaseInstanceIdService
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onTokenRefresh:()V:GetOnTokenRefreshHandler\n" +
			"";
		mono.android.Runtime.register ("EngagerMobile.Mariteam.Droid.Helpers.MyFirebaseIDService, EngagerMobile.Mariteam.Android", MyFirebaseIDService.class, __md_methods);
	}


	public MyFirebaseIDService ()
	{
		super ();
		if (getClass () == MyFirebaseIDService.class) {
			mono.android.TypeManager.Activate ("EngagerMobile.Mariteam.Droid.Helpers.MyFirebaseIDService, EngagerMobile.Mariteam.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public void onTokenRefresh ()
	{
		n_onTokenRefresh ();
	}

	private native void n_onTokenRefresh ();

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}

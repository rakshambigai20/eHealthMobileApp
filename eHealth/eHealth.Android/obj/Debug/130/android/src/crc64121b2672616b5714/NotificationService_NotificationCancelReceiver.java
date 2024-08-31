package crc64121b2672616b5714;


public class NotificationService_NotificationCancelReceiver
	extends android.content.BroadcastReceiver
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onReceive:(Landroid/content/Context;Landroid/content/Intent;)V:GetOnReceive_Landroid_content_Context_Landroid_content_Intent_Handler\n" +
			"";
		mono.android.Runtime.register ("eHealth.Droid.Service.NotificationService+NotificationCancelReceiver, eHealth.Android", NotificationService_NotificationCancelReceiver.class, __md_methods);
	}


	public NotificationService_NotificationCancelReceiver ()
	{
		super ();
		if (getClass () == NotificationService_NotificationCancelReceiver.class) {
			mono.android.TypeManager.Activate ("eHealth.Droid.Service.NotificationService+NotificationCancelReceiver, eHealth.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public void onReceive (android.content.Context p0, android.content.Intent p1)
	{
		n_onReceive (p0, p1);
	}

	private native void n_onReceive (android.content.Context p0, android.content.Intent p1);

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

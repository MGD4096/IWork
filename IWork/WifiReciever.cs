using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Net;
using Android.Net.Wifi;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using SQLite;

namespace IWork
{
    [BroadcastReceiver(Enabled = true)]
    [IntentFilter(new[] { Android.Net.ConnectivityManager.ConnectivityAction })]
    public class WifiReceiver : BroadcastReceiver
    {
        public override void OnReceive(Context context, Intent intent)
        {
            ConnectivityManager conMan = (ConnectivityManager)context.GetSystemService(Context.ConnectivityService);
            NetworkInfo netInfo = conMan.ActiveNetworkInfo;
            if (netInfo != null &&  ConnectivityManager.IsNetworkTypeValid(ConnectivityType.Wifi))
            {
                Log.Debug("WifiReceiver", "Have Wifi Connection");
            }
            else
            {
                Log.Debug("WifiReceiver", "Don't have Wifi Connection");
            }

        }
        //public override void OnReceive(Context context, Intent intent)
        //{

        //    NetworkInfo info = (NetworkInfo)intent.GetParcelableExtra(WifiManager.ExtraNetworkInfo);
        //    if (info != null && info.IsConnected)
        //    {
        //        // Do your work. 
        //        string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "IWorkDb.db3");
        //        // e.g. To check the Network Name or other info:
        //        WifiManager wifiManager = (WifiManager)context.GetSystemService(Context.WifiService);
        //        WifiInfo wifiInfo = wifiManager.ConnectionInfo;
        //        String ssid = wifiInfo.SSID;
        //        var db = new SQLiteConnection(dbPath);
        //        db.CreateTable<Models.ConnectingTime>();
        //        db.Insert(new Models.ConnectingTime()
        //        {
        //            EventTime = DateTime.Now,
        //            Status = ssid+" "+info.GetType()
        //        });
        //    }

        //}
    }
}
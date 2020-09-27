using Android.App;
using Android.Content;
using Android.Database;
using Android.Nfc;
using Android.Nfc.Tech;
using Android.OS;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Support.V7.App;
using Android.Util;
using Android.Views;
using Android.Widget;
using SQLite;
using System;
using System.IO;
using System.Linq;
using System.Text;
using static Android.Views.View;

namespace IWork
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
    [IntentFilter(new[] { NfcAdapter.ActionNdefDiscovered }, Categories = new[] { "android.intent.category.DEFAULT" }, DataMimeType = "*/*")]
    public class MainActivity : AppCompatActivity, BottomNavigationView.IOnNavigationItemSelectedListener
    {
        //TextView textMessage;
        private NfcAdapter mNfcAdapter;
        RelativeLayout li;
        private PendingIntent _pendingIntent;
        private string[][] _techList = new string[][]{
                 new[] { "android.nfc.tech.NdefFormatable" } ,
                 new [] { "android.nfc.tech.NfcA" } ,
                 new [] { "android.nfc.tech.Ndef" },
                 new [] { "android.nfc.tech.Ndef" }};
        private bool readed = false;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);
            BottomNavigationView navigation = FindViewById<BottomNavigationView>(Resource.Id.navigation);
            navigation.SetOnNavigationItemSelectedListener(this);
            mNfcAdapter = NfcAdapter.GetDefaultAdapter(this);
            loadFragment(new HomeFragment());
            var mIntent = Intent;
            var tag = mIntent.GetParcelableExtra(NfcAdapter.ExtraTag) as Tag;
            if (tag != null)
            {
                OnNewIntent(mIntent);
            }
            Log.Debug("MGTEST", "ONCREATE");
        }
        protected override void OnResume()
        {
            Log.Debug("MGTEST", "ONRESUME");
            if (mNfcAdapter != null)
            {
                var tagDetected = new IntentFilter(NfcAdapter.ActionTagDiscovered);//or try other Action type
                var filters = new[] { tagDetected };
                var intent = new Intent(this, GetType()).AddFlags(ActivityFlags.SingleTop);
                var pendingIntent = PendingIntent.GetActivity(this, 0, intent, 0);
                var tag = Intent.GetParcelableExtra(NfcAdapter.ExtraTag);
                if (tag != null)
                {
                    Log.Debug("MGTEST", "RESUME WITH TAG");
                }
                mNfcAdapter.EnableForegroundDispatch(this, pendingIntent, filters, null);
            }
            if (isNfcIntent(Intent)&&readed)
            {
                processIntent(Intent);
                readed = false;
            }
            loadFragment(new HomeFragment());
            base.OnResume();
        }
        protected override void OnPause()
        {
            if (mNfcAdapter != null) mNfcAdapter.DisableForegroundDispatch(this);
            base.OnPause();
        }
        protected override void OnDestroy()
        {
            if (mNfcAdapter != null)
            {
                mNfcAdapter.Dispose();
                mNfcAdapter = null;
            }
            base.OnDestroy();
        }
        protected override void OnNewIntent(Intent intent)
        {

            Log.Debug("MGTEST", "ON NEW INTENT");
            readed = true;
            Intent = intent;
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        public bool OnNavigationItemSelected(IMenuItem item)
        {

            Fragment selectedFragment = null;
            switch (item.ItemId)
            {
                case Resource.Id.navigation_home:
                    selectedFragment = new HomeFragment();
                    loadFragment(selectedFragment);
                    return true;
                case Resource.Id.navigation_events:
                    selectedFragment = new HistoryFragment();
                    loadFragment(selectedFragment);
                    return true;
                case Resource.Id.navigation_days:
                    selectedFragment = new SummaryFragment();
                    loadFragment(selectedFragment);
                    return true;
                case Resource.Id.navigation_months:
                    selectedFragment = new SummaryMonthsFragment();
                    loadFragment(selectedFragment);
                    return true;
            }

            loadFragment(selectedFragment);
            return false;
        }
        private void loadFragment(Fragment fragmewnt)
        {
            this.FragmentManager.BeginTransaction().Replace(Resource.Id.container, fragmewnt).Commit();
        }
        private bool isNfcIntent(Intent intent)
        {
            var tag = intent.GetParcelableExtra(NfcAdapter.ExtraTag) as Tag;
            return tag != null;
        }
        private void processIntent(Intent intent)
        {
            var tag = intent.GetParcelableExtra(NfcAdapter.ExtraTag) as Tag;
            var rawMessages = intent.GetParcelableArrayExtra(NfcAdapter.ExtraNdefMessages);
            if (rawMessages != null)
            {
                var msg = (NdefMessage)rawMessages[0];
                var record = msg.GetRecords()[0];
                if (record != null)
                {
                    if (record.Tnf == NdefRecord.TnfExternalType)
                    {
                        var data = Encoding.ASCII.GetString(record.GetPayload());
                        if(data== "it.mateuszgrzymala.iwork")
                        {
                            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "IWorkDb.db3");
                            using (var db = new SQLiteConnection(dbPath))
                            {
                                db.CreateTable<Models.ConnectingTime>();
                                var a = db.Table<Models.ConnectingTime>().ToList().Where(x=> x.EventTime.Day == DateTime.Now.Day && x.EventTime.Month == DateTime.Now.Month && x.EventTime.Year == DateTime.Now.Year).OrderByDescending(x => x.EventTime).FirstOrDefault();
                                var status = "Start";
                                if (a != null)
                                {
                                    if (a.Status == "End")
                                    {
                                        status = "Start";
                                    }
                                    else
                                    {
                                        status = "End";
                                    }
                                }
                                db.Insert(new Models.ConnectingTime()
                                {
                                    EventTime = DateTime.Now,
                                    Status = status
                                });
                                db.Commit();
                                db.Close();
                            }
                        }
                    }
                }
            }
        }
    }
}


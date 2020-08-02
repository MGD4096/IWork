using Android.App;
using Android.Database;
using Android.OS;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;
using SQLite;
using System;
using System.IO;
using static Android.Views.View;

namespace IWork
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
    public class MainActivity : AppCompatActivity, BottomNavigationView.IOnNavigationItemSelectedListener
    {
        //TextView textMessage;
        RelativeLayout li;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);
            //textMessage = FindViewById<TextView>(Resource.Id.message);
            BottomNavigationView navigation = FindViewById<BottomNavigationView>(Resource.Id.navigation);
            navigation.SetOnNavigationItemSelectedListener(this);
            loadFragment(new HomeFragment());
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        public bool OnNavigationItemSelected(IMenuItem item)
        {
            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "IWorkDb.db3");

            var db = new SQLiteConnection(dbPath);
            Fragment selectedFragment = null;
            switch (item.ItemId)
            {
                case Resource.Id.navigation_home:
                    selectedFragment = new HomeFragment();
                    //textMessage.SetText(Resource.String.title_home);
                    TextView tv = FindViewById<TextView>(Resource.Id.homeText);
                    db.CreateTable<Models.ConnectingTime>();
                    long count = db.Table<Models.ConnectingTime>().Count();
                    tv.SetText(GetString(Resource.String.home_title) + $" {count}h", TextView.BufferType.Spannable);
                    Button start_button = FindViewById<Button>(Resource.Id.homeStartBtn);
                    start_button.Click += delegate { startWork(); };
                    Button end_button = FindViewById<Button>(Resource.Id.homeEndBtn);
                    end_button.Click += delegate { endWork(); };
                    return true;
                case Resource.Id.navigation_dashboard:
                    selectedFragment = new HistoryFragment();
                    //textMessage.SetText(Resource.String.title_dashboard);
                    //var listview = FindViewById<ListView>(Resource.Id.listView1);
                    //listview.

                    //gridview.ItemClick += delegate (object sender, AdapterView.ItemClickEventArgs args) {
                    //    Toast.MakeText(this, args.Position.ToString(), ToastLength.Short).Show();
                    //};
                    return true;
                case Resource.Id.navigation_notifications:
                    selectedFragment = new SettingsFragment();
                    //textMessage.SetText(Resource.String.title_notifications);
                    return true;
                case Resource.Id.navigation_settings:
                    selectedFragment = new SettingsFragment();

                    //textMessage.SetText(Resource.String.title_settings);
                    return true;
            }
            db.Commit();
            db.Close();
            loadFragment(selectedFragment);
            return false;
        }
        private void loadFragment(Fragment fragmewnt)
        {
            this.FragmentManager.BeginTransaction().Replace(Resource.Id.container, fragmewnt).Commit();
        }
        private void startWork()
        {
            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "IWorkDb.db3");

            var db = new SQLiteConnection(dbPath);
            db.CreateTable<Models.ConnectingTime>();
            db.Insert(new Models.ConnectingTime()
            {
                EventTime = DateTime.Now,
                Status = "Start"
            });
            db.Commit();
            db.Close();
        }
        private void endWork()
        {
            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "IWorkDb.db3");

            var db = new SQLiteConnection(dbPath);
            db.CreateTable<Models.ConnectingTime>();
            db.Insert(new Models.ConnectingTime()
            {
                EventTime = DateTime.Now,
                Status = "End"
            });
            db.Commit();
            db.Close();
        }
    }
}


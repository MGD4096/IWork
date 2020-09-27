using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using IWork.Models;
using SQLite;

namespace IWork
{
    public class HomeFragment : Fragment
    {
        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Create your fragment here
        }

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "IWorkDb.db3");

            var db = new SQLiteConnection(dbPath);
            // Use this to return your custom view for this Fragment
            // return inflater.Inflate(Resource.Layout.YourFragment, container, false);
            View rootView = inflater.Inflate(Resource.Layout.fragment_home, container, attachToRoot: false);
            TextView tv = rootView.FindViewById<TextView>(Resource.Id.homeText);
            TextView tv2 = rootView.FindViewById<TextView>(Resource.Id.homeText2);
            db.CreateTable<Models.ConnectingTime>();
            var list = db.Table<Models.ConnectingTime>().ToList();
            double count = 0;
            string lastState = "";
            if (list.Any(x => x.EventTime.ToString("dd.MM.yyyy") == DateTime.Now.ToString("dd.MM.yyyy") && x.Status == "Start"))
            {
                var TodayEvents = list.Where(x => x.EventTime.ToString("dd.MM.yyyy") == DateTime.Now.ToString("dd.MM.yyyy")).OrderBy(x => x.EventTime).ToList();
                var lastStateObj = list.Where(x => x.EventTime.ToString("dd.MM.yyyy") == DateTime.Now.ToString("dd.MM.yyyy")).OrderByDescending(x => x.EventTime).ToList().FirstOrDefault();
                if (lastStateObj != null)
                {
                    if(lastStateObj.Status=="Start")
                    lastState = "Rozpoczęto";
                    else
                    lastState = "Zakończono";


                }
                ConnectingTime previousState = null;
                foreach (var dayHistory in TodayEvents)
                {
                    if (previousState == null && dayHistory.Status == "Start")
                    {
                        previousState = dayHistory;
                    }
                    else if (previousState != null && previousState.Status == "Start" && dayHistory.Status == "End")
                    {
                        var hours = (dayHistory.EventTime - previousState.EventTime);
                        count += hours.TotalHours;
                        previousState = null;
                    }
                }
                //if (StartTime != null)
                //{
                //    var EndTime = list.Where(x => x.EventTime.ToString("dd.MM.yyyy") == DateTime.Now.ToString("dd.MM.yyyy")).OrderBy(x => x.EventTime).Where(x => x.Status == "End").LastOrDefault();
                //    if (EndTime != null)
                //    {
                //        count = (EndTime.EventTime - StartTime.EventTime).TotalHours;
                //    }
                //    else
                //    {
                //        count = (DateTime.Now - StartTime.EventTime).TotalHours;
                //    }
                //}
            }
            tv.SetText(GetString(Resource.String.home_title) + $" {string.Format("{0:0.00}",count)}h", TextView.BufferType.Spannable);
            tv2.SetText(GetString(Resource.String.home_title2) +" "+ lastState, TextView.BufferType.Spannable);
            Button start_button = rootView.FindViewById<Button>(Resource.Id.homeStartBtn);
            start_button.Click += delegate { startWork(); };
            Button end_button = rootView.FindViewById<Button>(Resource.Id.homeEndBtn);
            end_button.Click += delegate { endWork(); };
            db.Commit();
            db.Close();
            return rootView;
        }
        private void startWork()
        {
            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "IWorkDb.db3");
            using (var db = new SQLiteConnection(dbPath))
            {
                db.CreateTable<Models.ConnectingTime>();
                var a = db.Table<Models.ConnectingTime>().ToList().OrderByDescending(x => x.EventTime).FirstOrDefault();
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
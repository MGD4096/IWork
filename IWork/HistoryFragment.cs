using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using SQLite;

namespace IWork
{
    public class HistoryFragment: Android.Support.V4.App.Fragment
    {
        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            
            // Create your fragment here
        }

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            // Use this to return your custom view for this Fragment
            // return inflater.Inflate(Resource.Layout.YourFragment, container, false);
            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "IWorkDb.db3");
            var db = new SQLiteConnection(dbPath);
            var listOFWorkHistory = db.Table<Models.ConnectingTime>().ToList();
            var listOFWorkHistoryString =new List<string>();
            foreach (var item in listOFWorkHistory.OrderByDescending(x=>x.EventTime))
            {
                listOFWorkHistoryString.Add(item.EventTime + " " + item.Status);
            }

            View rootView = inflater.Inflate(Resource.Layout.fragment_history, container, attachToRoot: false);
            ListView list = rootView.FindViewById<ListView>(Resource.Id.WorkHistory);
            ArrayAdapter<string> adapter = new ArrayAdapter<string>(Context, Android.Resource.Layout.SimpleListItem1, objects: listOFWorkHistoryString.ToArray());
            list.Adapter = adapter;
            db.Close();
            return rootView;
        }
    }
}
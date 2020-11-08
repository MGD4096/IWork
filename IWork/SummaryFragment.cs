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
using IWork.Models;
using SQLite;

namespace IWork
{
    public class SummaryFragment : Android.Support.V4.App.Fragment
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
            List<DateTime> listOfDays = new List<DateTime>();
            List<WorkEvent> listOFWorkHistory = new List<WorkEvent>();
            using (var db = new SQLiteConnection(dbPath))
            {
                listOFWorkHistory = db.Table<Models.WorkEvent>().ToList();
                db.Close();
            }
            foreach (var Day in listOFWorkHistory)
            {
                if (!listOfDays.Any(x => x.Year == Day.EventTime.Year && x.Month == Day.EventTime.Month && x.Day == Day.EventTime.Day))
                {
                    listOfDays.Add(new DateTime(Day.EventTime.Year, Day.EventTime.Month, Day.EventTime.Day));
                }
            }

            var listOFWorkHistoryString = new List<string>();
            foreach (var item in listOfDays.OrderByDescending(x=>x))
            {
                var listOfDayHistory = listOFWorkHistory.Where(x => x.EventTime.Year == item.Year && x.EventTime.Month == item.Month && x.EventTime.Day == item.Day).OrderBy(x => x.EventTime);
                double TotalTime = 0.0;
                WorkEvent previousState = null;
                foreach (var dayHistory in listOfDayHistory)
                {
                    if (previousState == null&& dayHistory.Status=="Start")
                    {
                        previousState = dayHistory;
                    }else if (previousState != null && previousState.Status == "Start" && dayHistory.Status == "End")
                    {
                        var hours = (dayHistory.EventTime - previousState.EventTime);
                        TotalTime += hours.TotalHours;
                        previousState = null;
                    }
                }
                var diff = (TotalTime - 8.00);
                listOFWorkHistoryString.Add(item.ToString("dd.MM.yyyy") + "     8.00h     /     " + string.Format("{0:0.00}", TotalTime) + "h    /    "+ string.Format("{0:0.00}", diff)+ "h");
            }

            View rootView = inflater.Inflate(Resource.Layout.fragment_summary, container, attachToRoot: false);
            ListView list = rootView.FindViewById<ListView>(Resource.Id.WorkHistorySummary);
            ArrayAdapter<string> adapter = new ArrayAdapter<string>(Context, Android.Resource.Layout.SimpleListItem1, objects: listOFWorkHistoryString.ToArray());
            list.Adapter = adapter;

            return rootView;
        }
    }
}
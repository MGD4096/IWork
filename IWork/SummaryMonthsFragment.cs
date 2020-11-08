using Android.App;
using Android.OS;
using Android.Views;
using Android.Widget;
using IWork.Models;
using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace IWork
{
    internal class SummaryMonthsFragment : Android.Support.V4.App.Fragment
    {
        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
        }

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "IWorkDb.db3");
            List<DateTime> listOfDays = new List<DateTime>();
            List<MonthOfYear> monthOfYears = new List<MonthOfYear>();
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
                    if (!monthOfYears.Any(x => x.Month == Day.EventTime.Month && x.Year == Day.EventTime.Year))
                    {
                        var mOY = new MonthOfYear(Day.EventTime.Month, Day.EventTime.Year);
                        mOY.calculateWorkingHour();
                        monthOfYears.Add(mOY);
                    }
                }
            }

            var listOFWorkHistoryString = new List<string>();
            foreach (var month in monthOfYears.OrderByDescending(x=>x.Year).ThenByDescending(x=>x.Month))
            {
                double totalTime = 0;
                foreach (var item in listOfDays.Where(x=>x.Month==month.Month&&x.Year==month.Year))
                {
                    var listOfDayHistory = listOFWorkHistory.Where(x => x.EventTime.Year == item.Year && x.EventTime.Month == item.Month && x.EventTime.Day == item.Day).OrderBy(x => x.EventTime);
                    double TotalTime = 0.0;
                    WorkEvent previousState = null;
                    foreach (var dayHistory in listOfDayHistory)
                    {
                        if (previousState == null && dayHistory.Status == "Start")
                        {
                            previousState = dayHistory;
                        }
                        else if (previousState != null && previousState.Status == "Start" && dayHistory.Status == "End")
                        {
                            var hours = (dayHistory.EventTime - previousState.EventTime);
                            TotalTime += hours.TotalHours;
                            previousState = null;
                        }
                    }
                    totalTime += TotalTime;
                }
                var diff = (totalTime - month.WorkingHour);
                listOFWorkHistoryString.Add(string.Format("{0:00}", month.Month)+"."+month.Year + "      " + string.Format("{0:000.00}", month.WorkingHour)+ "h     /     "+ string.Format("{0:000.00}", totalTime) + "h    /    " + string.Format("{0:0.00}", diff)+"h");
            }

            View rootView = inflater.Inflate(Resource.Layout.fragment_summary, container, attachToRoot: false);
            ListView list = rootView.FindViewById<ListView>(Resource.Id.WorkHistorySummary);
            ArrayAdapter<string> adapter = new ArrayAdapter<string>(Context, Android.Resource.Layout.SimpleListItem1, objects: listOFWorkHistoryString.ToArray());
            list.Adapter = adapter;

            return rootView;
        }
    }
}
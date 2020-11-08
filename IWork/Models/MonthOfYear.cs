using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Nager.Date;

namespace IWork.Models
{
    public class MonthOfYear
    {
        public MonthOfYear()
        {

        }
        public MonthOfYear(int month, int year)
        {
            Month = month;
            Year = year;
        }
        public MonthOfYear(int month, int year,double workingHour)
        {
            Month = month;
            Year = year;
            WorkingHour = workingHour;
        }

        public int Month { get; set; }
        public int Year { get; set; }
        public double WorkingHour { get; set; }
        public void calculateWorkingHour()
        {
            if (Month != 0 && Year != 0)
            {
                var workinghour = 0.00;
                Enumerable.Range(1, DateTime.DaysInMonth(Year, Month)).ToList().ForEach(x =>
                {
                    var date = new DateTime(Year, Month, x);
                    if (!DateSystem.IsWeekend(date, CountryCode.PL) && !DateSystem.IsPublicHoliday(date, CountryCode.PL))
                    {
                        workinghour += 8.00;
                    }
                });  // Days: 1, 2 ... 31 etc.
                WorkingHour = workinghour;
            }
            else
            {
                WorkingHour = 0.00;
            }
        }
    }
}
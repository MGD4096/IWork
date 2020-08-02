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

namespace IWork.Models
{
    public class WorkingTime
    {
        public long Id { get; set; }
        public DateTime Date { get; set; }
        public int MyProperty { get; set; }
    }
}
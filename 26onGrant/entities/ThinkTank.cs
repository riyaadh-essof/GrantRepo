using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _26onGrant.entities
{
    public class ThinkTank
    { 

        DateTime startTime;

        DateTime endtime;

        int hours;

        double total;

        public ThinkTank(DateTime startTime, DateTime endtime, int hours)
        {
            this.StartTime = startTime;
            this.Endtime = endtime;
            this.Hours = hours;
        }

        public int Hours { get; set; }
        public DateTime Endtime { get ; set ; }
        public DateTime StartTime { get ; set; }
        public double Total { get ; set ; }
    }
}
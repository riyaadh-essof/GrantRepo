using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _26onGrant.entities
{
    public class Boardroom
    {
        DateTime startTime;

        DateTime endtime;

        int hours;

        double total;

        public Boardroom(DateTime startTime, DateTime endtime, int hours)
        {
            this.startTime = startTime;
            this.Endtime = endtime;
            this.Hours = hours;
        }

        public int Hours { get; set; }
        public DateTime Endtime { get; set; }
        public DateTime StartTime { get; set; }
        public double Total { get; set; }
    }
}
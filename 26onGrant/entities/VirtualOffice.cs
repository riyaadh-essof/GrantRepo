using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _26onGrant
{
    public class VirtualOffice
    {
        DateTime startTime;

        DateTime endtime;

        double total;

        public VirtualOffice(DateTime startTime, DateTime endtime)
        {
            this.startTime = startTime;
            this.endtime = endtime;
        }

        public DateTime Endtime { get; set; }
        public DateTime StartTime { get;  set; }
        public double Total { get; set; }
    }
}
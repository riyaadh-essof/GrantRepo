using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _26onGrant
{
    public class Office
    {

        int officeID;

        DateTime startDate;

        DateTime endDate;

        double total;

        public Office(DateTime startDate, DateTime endDate, int officeID, double total)
        {
            this.startDate = startDate;
            this.endDate = endDate;
            this.officeID = officeID;
            this.total = total;
        }

        public DateTime StartDate { get ; set; }
        public DateTime EndDate { get; set; }
        public double Total { get; set; }
        public int OfficeID { get; set; }

    }
}
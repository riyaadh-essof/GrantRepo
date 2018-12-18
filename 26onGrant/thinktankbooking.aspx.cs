using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _26onGrant
{
    public partial class thinktankbooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object events = calendarData2();
            System.Diagnostics.Debug.WriteLine(events);
        }

        //[WebMethod]
        //public static List<calendarRecord> calendarData()
        //{
        //    GrantServiceRef.I26onGrantServiceClient boardroomRef = new GrantServiceRef.I26onGrantServiceClient();
        //    DataTable dtboardroom = boardroomRef.getBoardroom();

        //    List<calendarRecord> list = new List<calendarRecord>();
        //    foreach(DataRow dr in dtboardroom.Rows)
        //    {
        //        list.Add(new calendarRecord(dr["ID"].ToString(), dr["BookerID"].ToString(),dr["StartTime"].ToString(), dr["EndTime"].ToString()));

        //    }
        //    return list;




        //}

        [WebMethod]
        public static string calendarData2()
        {
            GrantServiceRef.I26onGrantServiceClient thinktankRef = new GrantServiceRef.I26onGrantServiceClient();
            DataTable dtboardroom = thinktankRef.getThinkTank();

            List<calendarRecord> list = new List<calendarRecord>();
            foreach (DataRow dr in dtboardroom.Rows)
            {
                list.Add(new calendarRecord(dr["ID"].ToString(), dr["StartTime"].ToString(), dr["EndTime"].ToString()));
            }
            var jsonSerialiser = new JavaScriptSerializer();

            var json = jsonSerialiser.Serialize(list);
            return json;

        }

        public class calendarRecord
        {
            public string id { get; set; }
            public string text { get; set; }
            public string start_date { get; set; }
            public string end_date { get; set; }

            public calendarRecord(string id, string start, string end)
            {
                this.id = id;
                this.text = "Booked";
                DateTime ds = DateTime.Parse(start);
                DateTime de = DateTime.Parse(end);

                start_date = ds.ToString("M/dd/yyyy hh:mm");
                end_date = de.ToString("M/dd/yyyy hh:mm");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Newtonsoft.Json;
using System.Web.Services;

namespace _26onGrant
{
    public partial class boardroomrental : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string calendarData()
        {
            GrantServiceRef.I26onGrantServiceClient boardroomRef = new GrantServiceRef.I26onGrantServiceClient();
            DataTable dtboardroom = boardroomRef.getBoardroom();
            string JSONresult;
            JSONresult = JsonConvert.SerializeObject(dtboardroom);
            return JSONresult;
        }

        protected void btnBoardroombooking_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("boardroombooking.aspx");
        }
    }
}
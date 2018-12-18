using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _26onGrant
{
    public partial class verifyclient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["clientid"].ToString());

            GrantServiceRef.I26onGrantServiceClient gsVerify = new GrantServiceRef.I26onGrantServiceClient();
            gsVerify.verifyEmail(id);

            Response.Redirect("login.aspx");
        }
    }
}
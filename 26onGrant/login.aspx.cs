using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _26onGrant
{
    public partial class login : System.Web.UI.Page
    {
        private const string verifiedStatus = "verified";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reg_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            int id = 0;
            string businessName = "";
            string status = "";

            GrantServiceRef.I26onGrantServiceClient gsAuth = new GrantServiceRef.I26onGrantServiceClient();

            try
            {
                if (gsAuth.leeseeAuth(txtEmail.Value, ref id, ref businessName, txtPassword.Value, ref status))
                {
                    if (status.Equals(verifiedStatus))
                    {
                        Session["ID"] = id;
                        Session["BusinessName"] = businessName;
                        Session["LoggedIn"] = txtEmail.Value;
                        Response.Redirect("home.aspx");
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('Verify email');</script>");
                    }
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Incorrect username or password');</script>");
                }

            }
            catch (NullReferenceException ex)
            {
                Response.Redirect("error.aspx");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _26onGrant.entities;

namespace _26onGrant
{
    public partial class master : System.Web.UI.MasterPage
    {
         
        private const string verifiedStatus = "verified";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Cart"] == null)
            {
                System.Diagnostics.Debug.WriteLine("Running");
                Cart cart = new Cart();
                Session["Cart"] = cart;

            }
            else
            {
                numItem.InnerText = ((Cart)Session["Cart"]).item.Count.ToString(); 
            }
        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            int id = 0;
            string businessName = "";
            string status = "";

            GrantServiceRef.I26onGrantServiceClient gsAuth = new GrantServiceRef.I26onGrantServiceClient();

            try
            {
                if (gsAuth.leeseeAuth(txtEmail.Value, ref id, ref businessName, txtPass.Value, ref status))
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
                    }
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Incorrect username or password');</script>");
                    Response.Write("<script language=javascript>alert(' " + txtEmail.Value + "');</script>");
                }

            }
            catch (NullReferenceException ex)
            {
                Response.Redirect("error.aspx");
            }
        }
    }
}

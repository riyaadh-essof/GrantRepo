using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace _26onGrant
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void sendRegMail(string userEmail, int userID, string clientName)
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient();
            SmtpServer.Host = "smtp.gmail.com";
            SmtpServer.Port = 587;
            SmtpServer.EnableSsl = true;
            SmtpServer.Credentials = new System.Net.NetworkCredential("riyaadh.essof@gmail.com", "201228019");
            mail.IsBodyHtml = true;
            mail.From = new MailAddress("riyaadh.essof@gmail.com", "Web Response");
            mail.To.Add(userEmail);
            mail.Subject = "Verification 26 on Grant";

            string body = "Hi " + clientName + ", <br/>";
            body += "Welcome to 26 on Grant!<br/> <br/>";

            body += "Please verify your account to activate it by clicking on the link below:<br/>";
            body += "<a>localhost:56398/verifyclient.aspx?clientid=" + userID + "</a><br/>";
            body += "We are pleased to have your on board!<br/>";

            mail.Body = body;
            SmtpServer.Send(mail);
        }

        protected void btnRregister_ServerClick(object sender, EventArgs e)
        {
            GrantServiceRef.I26onGrantServiceClient gsReg = new GrantServiceRef.I26onGrantServiceClient();
            if (gsReg.checkUser(txtEmail.Value))
            {
                Response.Write("<script language=javascript>alert('Email exists!');</script>");
            }
            else
            {
                int id = gsReg.registerLesee(txtName.Value, txtLastName.Value, txtCell.Value, txtEmail.Value, txtPass.Value, txtBusName.Value, txtBusType.Value, txtVatNum.Value, txtBusRegNum.Value);
                sendRegMail(txtEmail.Value, id, txtName.Value);
                Response.Redirect("login.aspx");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _26onGrant.entities;

namespace _26onGrant
{
    public partial class virtualoffice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddToCart_ServerClick(object sender, EventArgs e)
        {
            DateTime startDate = Convert.ToDateTime(txtStartDate.Value);
            DateTime endDate = startDate.AddMonths(Convert.ToInt32(txtMonthly.Value));
            double totalVo = 1000.00 * Convert.ToInt32(txtMonthly.Value);
            VirtualOffice vo = new VirtualOffice(startDate, endDate);
            Cart cs = (Cart)Session["Cart"];
            System.Diagnostics.Debug.WriteLine(cs.ToString());

            cs.item.Add(vo);
            ((Cart)Session["Cart"]).setTotal(totalVo);
            Response.Redirect("cart.aspx");
        }
    }
}
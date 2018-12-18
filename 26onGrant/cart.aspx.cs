using _26onGrant.entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _26onGrant
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cart cs = (Cart)Session["Cart"];
            System.Diagnostics.Debug.WriteLine(cs.item.Count);
            Response.Write("<script>alert(' " + cs.item.Count + "');</script>");
            //if (cs.item.Count <= 0)
            //{

            //}
            //else
            //{
            //    for (int i = 0; i <= cs.item.Count; i++)
            //    {
            //        if (cs.item[i].GetType() == typeof(Office))
            //        {
            //            cartItem.InnerHtml += "'<tr><td><div class='thumb_cart'><img src = ../../via.placeholder.com/150x150/ccc/fff/thumb_cart_1.jpg' alt='Image></div><span class=''tem_cart'>Persius delenit has cu</span></td><td>0%</td>td><strong>24,71$</strong></td><td class='options' style='width:5%; text-align:center;'><a href = '#' >< i class='icon-trash'></i></a></td></tr>'";
            //        }
            //        else if (cs.item[i].GetType() == typeof(VirtualOffice))
            //        {

            //        }else if (cs.item[i].GetType() == typeof(Boardroom))
            //        {}
            //        else
            //        {

            //        }
            //    }
            //}
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using _26onGrant.entities;

namespace _26onGrant
{
    public partial class officebooking : System.Web.UI.Page
    {
        DateTime startDate;
        DateTime endDate;

        GrantServiceRef.I26onGrantServiceClient officeRef = new GrantServiceRef.I26onGrantServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Loading method');</script>");
            string officeType = Request.QueryString["officeType"];
            System.Diagnostics.Debug.WriteLine(dropOffice.Value);
            dropOffice.Value = officeType;
            allOfficeDiv.InnerHtml = "";
            DataTable dt;

            if (!Page.IsPostBack)
            {
                Response.Write("<script>alert('Postback');</script>");
                if (dropOffice.Value.Equals("Type of Office"))
                {
                    dt = officeRef.allOffice();
                }
                else
                {
                    dt = officeRef.officeType(officeType);
                }

                foreach (DataRow office in dt.Rows)
                {
                    System.Diagnostics.Debug.WriteLine(office["ID"].ToString());
                    System.Diagnostics.Debug.WriteLine(office["Description"].ToString());
                    System.Diagnostics.Debug.WriteLine(office["RentalAmount"].ToString());
                    officeDiv.InnerHtml += "<div class='box_list'><div class='row no-gutters'><div class='col-lg-5'><figure><small>" + office["Type"].ToString() + "</small><a href = 'tour-detail.html' ><img src='img/tour_4.jpg' class='img-fluid' alt='' width='800' height='533'><div class='read_more'><span>Read more</span></div></a></figure></div><div class='col-lg-7'><div class='wrapper'><h3><a href = '' >" + office["Type"].ToString() + " </a></h3><p>" + office["description"].ToString() + " </p><ul><li><span class='price'>From<strong>" + office["RentalAmount"].ToString() + "</strong> /per month</span></li><li><p class='text-center'></p></li></ul></div></div></div></div>";
                }


                Response.Write("<script>alert('Hello');</script>");
                if (Request.QueryString["id"] != null)
                {
                    Response.Write("<script>alert('In method');</script>");
                    int id = Int32.Parse(Request.QueryString["id"]);
                    string startDate = Request.QueryString["StartDate"];
                    string endDate = Request.QueryString["EndDate"];
                    string total = Request.QueryString["total"];
                    Office office = new Office(DateTime.Parse(startDate), DateTime.Parse(endDate), id, double.Parse(total));
                    Cart cs = (Cart)Session["Cart"];
                    cs.item.Add(office);
                    ((Cart)Session["Cart"]).setTotal(office.Total);
                }
            }
        }

        private List<DataRow> searchAvailibility()
        {
            List<DataRow> availibleOfficeList = new List<DataRow>();
            DataTable dtOffices = officeRef.getOfficeID(dropOffice.Value);
            startDate = Convert.ToDateTime(txtStartDate.Value);
            endDate = startDate.AddMonths(Convert.ToInt32(txtMonthly.Value));

            foreach (DataRow office in dtOffices.Rows)
            {
                Boolean availible = true;
                DataTable bookedOffice = officeRef.checkOfficeAvailibility(int.Parse(office["ID"].ToString()));

                foreach (DataRow row in bookedOffice.Rows)
                {
                    int availibleStart = startDate.Date.CompareTo(Convert.ToDateTime(row["StartDate"]).Date);
                    int availibleEndStart = endDate.Date.CompareTo(Convert.ToDateTime(row["StartDate"]).Date);
                    int availibleStartEnd = startDate.Date.CompareTo(Convert.ToDateTime(row["EndDate"]).Date);
                    int availibleEnd = endDate.Date.CompareTo(Convert.ToDateTime(row["endDate"]).Date);

                    if (availibleStart >= 1 && availibleStartEnd <= -1)
                    {
                        availible = false;
                    }
                    else if (availibleEnd <= -1 && availibleEndStart >= 1)
                    {
                        availible = false;
                    }
                }

                if (availible)
                {

                    availibleOfficeList.Add(office);
                }
            }

            return availibleOfficeList;
        }


        protected void btnAddToCart_ServerClick1(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void btnSearchOffice_ServerClick1(object sender, EventArgs e)
        {
            officeDiv.InnerHtml = "";
            List<DataRow> officeList = searchAvailibility();
            foreach (DataRow office in officeList)
            {
                string id = office["ID"].ToString();
                string price = office["RentalAmount"].ToString();

                officeDiv.InnerHtml += "<div class='box_list'><div class='row no-gutters'><div class='col-lg-5'><figure><small>" + office["Type"].ToString() + "</small><a href = 'tour-detail.html' ><img src='img/tour_4.jpg' class='img-fluid' alt='' width='800' height='533'><div class='read_more'><span>Read more</span></div></a></figure></div><div class='col-lg-7'><div class='wrapper'><h3><a>" + office["Type"].ToString() + " </a></h3><p>" + office["description"].ToString() + " </p><ul><li><span class='price'>From<strong>" + office["RentalAmount"].ToString() + "</strong> /per month</span></li><li><p class='text-center'><a href='officebooking.aspx?StartDate=" + startDate + "&EndDate=" + endDate + "&total=" + price + "&id=" + id + "' class='btn_1 rounded' id='btnAddToCart' runat='server'>Add To Cart</a></p></li></ul></div></div></div></div>";
            }
        }
    }
}
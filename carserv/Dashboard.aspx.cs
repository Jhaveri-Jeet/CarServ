using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace carserv
{
    public partial class Dashboard : System.Web.UI.Page
    {
        Class1 c1 = new Class1();
        DataTable dt = new DataTable();
        DataTable inquirydt = new DataTable();
        DataTable usersdt = new DataTable();
        DataTable cardetailsdt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            string select = "SELECT * FROM Slot";
            dt = c1.get_data(select);

            string countInquiry = "SELECT COUNT(Id) as totalPendingInquiry FROM Inquiry WHERE status = 'pending'";
            inquirydt = c1.get_data(countInquiry);

            string countUsers = "SELECT COUNT(Id) as totalUsers FROM users";
            usersdt = c1.get_data(countUsers);

            string countCars= "SELECT COUNT(Id) as totalCars FROM cardetails";
            cardetailsdt = c1.get_data(countCars);

            int totalPendingInquiry = 0;
            if (inquirydt.Rows.Count > 0)
            {
                totalPendingInquiry = Convert.ToInt32(inquirydt.Rows[0]["totalPendingInquiry"]);
            }

            totalPendingInquiryText.InnerText = totalPendingInquiry.ToString();

            int totalUsers = 0;
            if (usersdt.Rows.Count > 0)
            {
                totalUsers = Convert.ToInt32(usersdt.Rows[0]["totalUsers"]);
            }

            totalUsersText.InnerText = totalUsers.ToString();

            int totalCars = 0;
            if (cardetailsdt.Rows.Count > 0)
            {
                totalCars = Convert.ToInt32(cardetailsdt.Rows[0]["totalCars"]);
            }

            totalCarsText.InnerText = totalCars.ToString();

            Repeater4.DataSource = dt;
            Repeater4.DataBind();
        }
    }
}
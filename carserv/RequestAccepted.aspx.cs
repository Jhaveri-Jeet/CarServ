using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace carserv
{
    public partial class RequestAccepted : System.Web.UI.Page
    {
        Class1 c3 = new Class1();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
        }
        public void display()
        {

            string select = "SELECT users.fullname, users.mobile, cardetails.carname, cardetails.carno, slot.day, slot.id as slotid, slot.time, Inquiry.status, Inquiry.Id FROM Inquiry INNER JOIN users ON Inquiry.Userid = users.id INNER JOIN Slot ON Slot.id = Inquiry.Slotid INNER JOIN cardetails ON cardetails.userid = users.id WHERE status = 'pending'";
            dt = c3.get_data(select);
            if (dt.Rows.Count > 0)
                Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}
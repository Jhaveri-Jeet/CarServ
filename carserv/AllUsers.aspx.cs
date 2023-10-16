using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace carserv
{
    public partial class AllUsers : System.Web.UI.Page
    {
        Class1 c3 = new Class1();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
        }
        public void display()
        {
            string select = "SELECT cardetails.carname, cardetails.carno, users.fullname, users.mobile FROM cardetails INNER JOIN users ON cardetails.userid = users.id";
            dt = c3.get_data(select);
            if (dt.Rows.Count > 0)
                Repeater2.DataSource = dt;
            Repeater2.DataBind();
        }
    }
}
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
    public partial class Slot : System.Web.UI.Page
    {
        Class1 c1 = new Class1();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string insert = "INSERT INTO Slot (Day, Time) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            c1.action(insert);
            Response.Redirect("./Slot.aspx");
            TextBox1.Text = "";
            TextBox2.Text = "";
            display();
        }
        public void display()
        {
            string select = "SELECT * FROM Slot";
            dt = c1.get_data(select);
            if (dt.Rows.Count > 0)
                Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}
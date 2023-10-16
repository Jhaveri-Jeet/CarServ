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
    public partial class Register : System.Web.UI.Page
    {
        Class1 c1 = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "Insert into users (fullname,mobile,email,password) values ('" + txtname.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')";
            c1.action(q);
            Response.Write("<script>alert('User Registered')</script>");
            Response.Redirect("./RegisterCar.aspx");
        }
    }
}
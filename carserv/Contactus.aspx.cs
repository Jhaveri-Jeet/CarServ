using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace carserv
{
    public partial class Contactus : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\carserv\carserv\App_Data\Car.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string q = "insert into Contact (Name,Email,Subject,Message) values ('" + txtname.Text + "','" + txtemail.Text + "','" + txtsubject.Text + "','" + txtmsg.Text + "')";
            SqlCommand cmd = new SqlCommand(q,con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Inserted Successfully')</script>");
            con.Close();
        }
    }
}
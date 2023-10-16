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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Desktop\carserv\carserv\App_Data\Car.mdf;Integrated Security=True");
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string q = "Select * from users WHERE fullname = '" + TextBox1.Text + "' AND password = '" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(q,con);

            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Session["username"] = dr["Id"];
                Response.Redirect("./Home.aspx");
            }
            //SqlDataAdapter da = new SqlDataAdapter(q, con);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}
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
    public partial class RegisterCar : System.Web.UI.Page
    {
        Class1 c1 = new Class1();
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Desktop\carserv\carserv\App_Data\Car.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (Session["username"] == null)
                Response.Redirect("./Login.aspx");
            int id = Convert.ToInt32(Session["username"]);
            string select = "SELECT * FROM cardetails WHERE userid = " + id + "";
            SqlCommand cmd = new SqlCommand(select,con);
            SqlDataReader dr = cmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    TextBox1.Text = dr["carname"].ToString();
            //    TextBox2.Text = dr["carno"].ToString();
            //    TextBox3.Text = dr["model"].ToString();
            //    TextBox4.Text = dr["problem"].ToString();
            //}
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid = Session["username"].ToString();
            //   Response.Write(userid);

            string q = "Insert into cardetails (carname,carno,model,problem,userid) values ('" + txtcarname.Text + "','" + txtcarno.Text + "','" + txtmodel.Text + "','" + txtmsg.Text + "','" + userid + "')";
            c1.action(q);
            Response.Write("<script>alert('Car Details Added Successfully')</script>");
        }
    }
}
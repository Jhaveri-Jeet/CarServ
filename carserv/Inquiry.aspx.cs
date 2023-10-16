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
    public partial class Inquiry : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Desktop\carserv\carserv\App_Data\Car.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
            if (Session["username"] == null)
                Response.Redirect("./Login.aspx");
        }
        public void display()
        {
            con.Open();
            string q = "SELECT CONCAT(day, ' ', time) AS slot, Id FROM Slot WHERE status = 'unoccupied'";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader dr = cmd.ExecuteReader();

            DropDownList1.DataSource = dr; 
            DropDownList1.DataTextField = "slot"; 
            DropDownList1.DataValueField = "Id"; 
            DropDownList1.DataBind();
            dr.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string insert = "INSERT INTO Inquiry (Userid, Slotid) VALUES('" + Session["username"] + "', '"+ DropDownList1.SelectedValue +"')";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Inquiry Added Successfully !')</script>");
        }
    }
}
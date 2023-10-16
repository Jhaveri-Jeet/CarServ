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
    public partial class acceptRequest : System.Web.UI.Page
    {
        Class1 c2 = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string slotid = Request.QueryString["slotid"];
            string updateSlot = "UPDATE Slot SET status = 'occupied' WHERE Id = '" + slotid + "'";
            string updateInquiry = "UPDATE Inquiry SET status = 'accept' WHERE Id = '" + id + "'";
            c2.action(updateSlot);
            c2.action(updateInquiry);
            Response.Redirect("./AllRequest.aspx");
        }
    }
}
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
    public partial class workOver : System.Web.UI.Page
    {
        Class1 c2 = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string slotid = Request.QueryString["slotid"];
            string updateSlot = "UPDATE Slot SET status = 'unoccupied' WHERE Id = '" + slotid + "'";
            string deleteInquiry = "UPDATE Inquiry SET status = 'decline' WHERE Id = '" + id + "'";
            c2.action(updateSlot);
            c2.action(deleteInquiry);
            Response.Redirect("./AllRequest.aspx");
        }
    }
}
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
    public partial class deleteSlot : System.Web.UI.Page
    {
        Class1 c2 = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string delete = "DELETE FROM Slot WHERE Id = '" + id + "'";
            c2.action(delete);
            Response.Redirect("./Slot.aspx");
        }
    }
}
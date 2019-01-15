using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string stat = Request.QueryString["addS"];
            Error.Text = (stat == "1") ? "New User add Successfully" : (stat == "0") ? "Error":"";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("DataGrid.aspx?search=" + txtSearch.Text , true);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model;

namespace WebApplication1
{
    public partial class DataGrid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string search = Request.QueryString["search"];
            var user = new User();
            try
            {
                GridViewSearch.DataSource = user.searchUser(search);
            }
            catch(SqlException)
            {

            }
            
        }
    }
}
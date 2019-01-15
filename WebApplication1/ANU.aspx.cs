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
    public partial class ANU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string search = Request.QueryString["search"];
            if(search != null)
                {
                try
                {
                    Database db = new Database();
                    SqlDataReader dr = db.selectDR(search);
                    while (dr.NextResult())
                    {

                    }
                }
                catch (SqlException ex)
                {

                }
            }
            
        }

        protected void btnANU_Click(object sender, EventArgs e)
        {
            int stat = 0;
            User user = new User();
            user.fName = txtfName.Text;
            user.lName = txtlName.Text;
            user.addr = txtAddr.Text;
            user.contactNo = txtTel.Text;
            user.gender = (rdpGender.SelectedValue == "Male") ? 1 : 0;
            user.dob = Calendar1.SelectedDate;
            user.email = txtEmail.Text;
            user.NIC = txtNIC.Text;
            stat = user.addUser();            
            Response.Redirect("Default.aspx?addS="+ ((stat == 0)?0:1), true);
        }

        
    }
}
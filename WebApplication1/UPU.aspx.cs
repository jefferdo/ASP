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
    public partial class UPU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string search = Request.QueryString["search"];
            try
            {
                var user = new User();
                SqlDataReader dr = user.searchUserDR(search);
                while (dr.Read())
                {
                    txtfName.Text = dr["fName"].ToString();
                    txtlName.Text = dr["lName"].ToString();
                    txtAddr.Text = dr["addr"].ToString();
                    txtTel.Text = dr["tele"].ToString();
                    rdpGender.SelectedIndex = Convert.ToInt32(dr["Gender"]);
                    Calendar1.SelectedDate = DateTime.Parse(dr["DOB"].ToString());
                    txtEmail.Text = dr["email"].ToString();
                    txtNIC.Text = dr["NIC"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
            txtNIC.Enabled = false;
        }

        
        protected void btnup_Click(object sender, EventArgs e)
        {
            int stat = 0;
            User user2 = new User();
            user2.fName = txtfName.Text;
            user2.lName = txtlName.Text;
            user2.addr = txtAddr.Text;
            user2.contactNo = txtTel.Text;
            user2.gender = (rdpGender.SelectedValue == "Female") ? 1 : 0;
            user2.dob = Calendar1.SelectedDate;
            user2.email = txtEmail.Text;
            user2.NIC = txtNIC.Text;
            stat = user2.updateUser();
            Response.Redirect("Default.aspx?addS=" + stat, true);
        }
    }
}
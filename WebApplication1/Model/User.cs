using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1.Model
{
    public class User
    {
        public string NIC { get; set; }
        public string fName { get; set; }
        public string lName { get; set; }
        public string addr { get; set; }
        public string contactNo { get; set; }
        public int gender { get; set; }
        public DateTime dob { get; set; }
        public string email { get; set; }

        public int addUser()
        {
            int stat = 0;
            var db = new Database();
            string query = string.Format("INSERT INTO [NewDB].[dbo].[userT] (NIC, fName, lName, addr, tele, gender, DOB, email) values ( '" + NIC + "', '" + fName + "', '" + lName + "', '" + addr + "', '" + contactNo + "', " + gender + ", '" + dob.ToString("yyyy-MM-dd") + "', '" + email + "') ");
            try
            {
                db.iud(query);
            }
            catch(SqlException ex)
            {
                
            }
            
            return stat;            
        }

        public int delUser()
        {
            int stat = 0;



            return stat;
        }

        public int updateUser()
        {
            int stat = 0;



            return stat;
        }

        public DataTable searchUser(string search)
        {
            DataTable dt = null;

            var db = new Database();
            string query = string.Format("SELECT * from [NewDB].[dbo].[userT] where NIC = '" + search + "' or Tele = '" + search + "' or fName = '" + search + "' or lName = '" + search + "'");
            try
            {
                dt = db.selectDT(query);
            }
            catch (SqlException ex)
            {

            }

            return dt;
        }
    }
}
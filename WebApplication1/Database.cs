using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public class Database
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;

        public Database()
        {
            string conString = "Data Source=JEFFERDOBEAST;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con = new SqlConnection(conString);
        }

        public int iud(string query)
        {
            int rows = 0;

            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                cmd = new SqlCommand(query, con);
                rows = cmd.ExecuteNonQuery();
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (SqlException ex)
            {
                con.Close();
                throw;
            }

            return rows;
        }

        public DataTable selectDT(string query)
        {
            DataTable dt = new DataTable();

            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                da = new SqlDataAdapter(query, con);
                da.Fill(dt);
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (SqlException ex)
            {
                con.Close();
            }

            return dt;
        }

        public SqlDataReader selectDR(string query)
        {
            SqlDataReader dr;

            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                cmd = new SqlCommand(query, con);
                dr = cmd.ExecuteReader();
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (SqlException ex)
            {
                con.Close();
                throw;
            }

            return dr;
        }
    }
}
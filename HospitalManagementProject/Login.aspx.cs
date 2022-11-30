using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementProject
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter ada;
        DataTable dt;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-EFJGF36;Initial Catalog=Hospital;Persist Security Info=true;User Id= sa ; Password=#admin46";
            con.Open();
            //Console.WriteLine("connection");

            con.Close();

        }

        protected void jLogtn_Click(object sender, EventArgs e)
        {
            try
            {
                string uname = tuname.Text;
                string pwd = tpwd.Text;
                con.Open();
                //string qry = "select * from LoginAdmin where username='" + uname + "' and password='" + pwd + "'";
               // SqlCommand cmd = new SqlCommand(qry, con);
                ada = new SqlDataAdapter("Select * from LoginAdmin where username='" + uname + "' and password='" + pwd + "'", con);
                dt = new DataTable();
                ada.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Message.Text = "Login Sucess......!!";
                }
                else
                {
                    Message.Text = "UserId & Password Is not correct Try again..!!";

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }


    }
}

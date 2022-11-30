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
    public partial class Signup : System.Web.UI.Page
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
            Response.Write("response");
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        { string name = tname.Text;
          string dob =  tdob.Text;
          string gender = string.Empty;
            if (rbMale.Checked)
            {
                gender = "M";
            }
            else if (rbFemale.Checked)
            {
                gender = "F";
            }
            string bg = tbg.SelectedValue;
            int mob = Convert.ToInt32(tmno.Text);
            string pwd = tpassword.Text;


            string s = "Insert into PReg values(100,+name + dob+gender+bg+mob)";
            // s = "insert into Employee values( 120 ,'Smith',10,555678,100)";

            con.Open();
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();


            con.Close();
            
        }

        protected void Unnamed1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
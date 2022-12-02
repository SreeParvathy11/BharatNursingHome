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
    public partial class SignupPatient : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter ada;
        DataTable dt;
        DataSet ds;
        public void clear()
        {
            tpid.Text = "";
            tbg.Text = "";
            tconpassword.Text = "";
            tmno.Text = "";
            tpassword.Text = "";
            tdob.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=HP;Initial Catalog=Hospital;Persist Security Info=true;User Id= sa ; Password=test@123";
            con.Open();
            //Console.WriteLine("connection");
            
            con.Close();

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string fname = tfname.Text;
            string lname = tlname.Text;
            string dob = tdob.Text;
            string bg = tbg.SelectedValue;
            string gender = string.Empty;
            if (rbMale.Checked)
            {
                gender = "M";
            }
            else if (rbFemale.Checked)
            {
                gender = "F";
            }
            else 
                {
                gender = "o";
            }
            string username = tuname.Text;
            string password = tpassword.Text;
            string confirmpassword = tconpassword.Text;
            long mob = Convert.ToInt64(tmno.Text);
            string email = temail.Text;
            string address = "kollam";

            string s = "Insert into PReg values("+100+",'"+fname+ "','" + lname + "'" + dob+",'"+bg+ "','" + gender + "','" +username+"', '"+password+ "'," + mob + " ,'"+email+"','"+address+"')";
            // s = "insert into Employee values( 120 ,'Smith',10,555678,100)";
             
            con.Open();
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();


            con.Close();
            clear();
            string message = "You Registered  Successfully.Your Patient id+na ";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }
    }
}
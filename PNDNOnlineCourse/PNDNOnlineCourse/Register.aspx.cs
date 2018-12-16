using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PNDNOnlineCourse
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void bthRegister_Click(object sender, EventArgs e)
        {
            try
            {
                int retObj = 0;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PNDNConnectionString"].ToString());

                string useremail = txtUserID.Text;
                string password = txtPassword.Text;
                string passwordConfirm = txtConfirmPassword.Text;
                con.Open();
                string query = "insert into [dbo].[Student] ([Name],[UserID],[Password]) values( @name, @userID, @password)";
                SqlParameter[] p = new SqlParameter[3];
               // p[0] = new SqlParameter("@id", 123456); 
                p[0] = new SqlParameter("@name", useremail);
                p[1] = new SqlParameter("@userID", useremail);
                p[2] = new SqlParameter("@password", password);
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddRange(p.ToArray());
                // SqlDataReader sdr =
                retObj=cmd.ExecuteNonQuery();
                //if (sdr.Read())
                //{
                //    Response.Redirect("Course.aspx");
                //}
                //else
                //{
                //    Label4.Text = "Invalid UserID or Password";

                //}
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
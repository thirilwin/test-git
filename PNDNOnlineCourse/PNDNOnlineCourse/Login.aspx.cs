using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PNDNOnlineCourse
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bthLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PNDNConnectionString"].ToString());

                string useremail = TextBox1.Text;
                string password = TextBox2.Text;
                con.Open();
                string query = "select * from Student where UserId='" + useremail + "' and Password='" + password + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["UserName"] = useremail;
                    Response.Redirect("Course.aspx");
                }
                else
                {
                    Label4.Text = "Invalid UserID or Password";

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
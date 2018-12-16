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
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] != null)
            {
                lblAuthorize.Visible = false;
                if (!IsPostBack)
                {
                    BindGridView();
                }
            }
            else
            {
                lblAuthorize.Visible = true;
            }
        }

        private void BindGridView()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PNDNConnectionString"].ToString());

            SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.Course");
            SqlDataAdapter sda = new SqlDataAdapter();
            try
            {
                cmd.Connection = con;
                con.Open();
                sda.SelectCommand = cmd;

                DataSet ds = new DataSet();
                sda.Fill(ds);

                //BIND DATABASE WITH THE GRIDVIEW.
                GridView.DataSource = ds;
                GridView.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void GridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView.PageIndex = e.NewPageIndex;
            BindGridView();
        }

        protected void GridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = GridView.SelectedIndex;
            Response.Redirect(String.Format("CourseDetails.aspx?CourseName={0}", i));
        }
    }
   
}
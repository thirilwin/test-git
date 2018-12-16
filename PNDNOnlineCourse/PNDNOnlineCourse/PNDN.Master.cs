using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PNDNOnlineCourse
{
    public partial class PNDN : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"]!=null)
            {
                HyperLyink1.Visible = false;
                lblUserName.Visible = true;
                lblUserName.Text = "Welcome " + Session["UserName"].ToString();
            }
            else
            {
                HyperLyink1.Visible = true;
                lblUserName.Visible = false;
            }
           
        }
    }
}
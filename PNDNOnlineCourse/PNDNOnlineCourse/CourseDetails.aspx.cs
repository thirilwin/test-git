﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PNDNOnlineCourse
{
    public partial class CourseDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fullname1 = Request.QueryString["CourseName"];
           // string fullname2 = Request["CourseName"];
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int d = 0;
                d++;
            }
        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/testWebForm.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["home_start"] = "home";
            if (Session["home_start"].ToString() == "home")
            {
                LinkButton linkButton = (LinkButton)Master.FindControl("Home");
                linkButton.Visible = false;
            }
        }

    }
}
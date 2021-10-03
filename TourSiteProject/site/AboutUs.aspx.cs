using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["aboutus_start"] = "aboutus";
            if (Session["aboutus_start"].ToString() == "aboutus" ) 
            {
                LinkButton linkButton = (LinkButton)Master.FindControl("Aboutus");
                linkButton.Visible = false;
                
            }

        }

       
    }
}
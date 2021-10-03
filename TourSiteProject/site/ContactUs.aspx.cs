using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["contactus_start"] = "contactus";
            if (Session["contactus_start"].ToString() == "contactus")
            {
                LinkButton linkButton = (LinkButton)Master.FindControl("Contactus");
                linkButton.Visible = false;

            }
        }
    }
}
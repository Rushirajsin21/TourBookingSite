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
            lbuser.Visible = false;
            user.Visible = false;
            //if ((string)Session["logedin"] == "loged_in")
            //{
            //    Button btnlogin = (Button)Master.FindControl("btnlogin");
            //    btnlogin.Visible = false;
            //    Button btnregister = (Button)Master.FindControl("btnregister");
            //    btnregister.Visible = false;
            //    Button btnlogout = (Button)Master.FindControl("btnlogout");
            //    btnlogout.Visible = true;

            //}
            if (Session["home_start"].ToString() == "home")
            {
                LinkButton linkButton = (LinkButton)Master.FindControl("Home");
                linkButton.Visible = false;
            }
            if((string)Session["logedin"] == "loged_in")
            {
                lbuser.Visible = true;
                sitename.Visible = false;
                user.Visible = true;
                user.Text = Session["user"].ToString();
                lbuser.Text += Session["user"].ToString();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["login_start"] = "log_in";
            if (Session["login_start"].ToString() =="log_in")
            {
                Button button = (Button)Master.FindControl("btnlogin");
                button.Visible = false;
                TextBox textBox = (TextBox)Master.FindControl("searchbox");
                textBox.Visible = false;
                Button button1 = (Button)Master.FindControl("btnsearch");
                button1.Visible = false;
            }
          
            
            
        }

        protected void reglink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void lgbtnClear_Click(object sender, EventArgs e)
        {
            lgemail.Text = lgpassword.Text ="" ;
            lgemail.Focus();
        }
    }
}
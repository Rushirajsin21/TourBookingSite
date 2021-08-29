using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["register_start"] = "register";
            if(Session["register_start"].ToString()=="register")
            {
                Button button = (Button)Master.FindControl("btnregister");
                button.Visible = false;
                TextBox textBox = (TextBox)Master.FindControl("searchbox");
                textBox.Visible = false;
                Button button1 = (Button)Master.FindControl("btnsearch");
                button1.Visible = false;
            }

        }

        protected void rgbtnregister_Click(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void rgbtnClear_Click(object sender, EventArgs e)
        {
            rgemail.Text = rgpassword.Text = rgusername.Text = rgretypepassword.Text = "";
            rgusername.Focus();
        }
    }
}
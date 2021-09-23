using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


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
            string sql = "select path, image_name from category";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            //Repeater2.DataSource = dt;
            //Repeater2.DataBind();
            //for (int i = 0; i <= dt.Rows.Count; i++)
            //{

            //    cat1mg.ImageUrl = (string)dt.Rows[i]["path"];
                
            //}
                
            
        }
    }
}
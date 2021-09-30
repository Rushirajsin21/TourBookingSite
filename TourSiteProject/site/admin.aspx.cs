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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            admins1.Visible = false;
            category1.Visible = false;
            gallery1.Visible = false;

        }

        protected void adminslink_Click(object sender, EventArgs e)
        {
            admins1.Visible = true;
            
        }

        protected void categorylink_Click(object sender, EventArgs e)
        {
            category1.Visible = true;
        }

        protected void gallerylink_Click(object sender, EventArgs e)
        {
            gallery1.Visible = true;
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            admins1.Visible = true;
            admin_name.Text = password.Text = Retypepassword.Text = "";
            admin_role.SelectedValue = "Select Admin Role";
        }

        protected void add_Click(object sender, EventArgs e)
        {
            admins1.Visible = true;
            string sql = "insert into admin values('"+admin_name.Text+"','"+admin_role.Text+"','"+password.Text+"')";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(!da.Equals(null))
            {
                Label1.Text = "admin added";
            }
            else
            {
                Label1.Text = "admin not added";
            }
            
        }
    }
}
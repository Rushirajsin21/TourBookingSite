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
    public partial class editadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            admin_name.Text = password.Text = Retypepassword.Text = "";
            admin_role.SelectedValue = "Select Admin Role";
        }

        protected void add_Click(object sender, EventArgs e)
        {
            
            string name =(string) Request.QueryString["id"];
            
            string sql = "update  admin set admin_name='"+admin_name.Text+"' , admin_role='"+admin_role.Text+"' ,admin_password='"+password.Text+"'  where admin_name='"+name+"'";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (!da.Equals(null))
            {

                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Write("not edit");
            }
        }
    }

    //admin_name='" + admin_name.Text + "' , admin_role='" + admin_role.Text + "', admin_password='"+ password.Text + "' where admin_name = '"+name+"'";
}
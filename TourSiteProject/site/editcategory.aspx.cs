using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class editcategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cat_clear_Click(object sender, EventArgs e)
        {
            cat_name.Text = loc_1.Text = loc_2.Text = "";
        }
    }
}
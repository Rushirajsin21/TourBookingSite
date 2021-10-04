using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace Site
{
    public class DBclass 
    {
       public static SqlConnection cn = new SqlConnection(@"Data Source=LAPTOP-J0FBUPVC\SQLEXPRESS;Initial Catalog=Site;Integrated Security=True");
    }
}
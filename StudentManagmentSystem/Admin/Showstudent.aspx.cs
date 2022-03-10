using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace StudentManagmentSystem.Admin
{
    public partial class Showstudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
    }
}
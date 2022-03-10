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
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True");
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from [dbo].[Stu]  ", con);
            

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            Label2.Text = Convert.ToString(i);
           
        }
    }
}
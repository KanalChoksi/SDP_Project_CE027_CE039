using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace StudentManagmentSystem.Teacher
{
    public partial class books : System.Web.UI.Page
    {
        static String resumelink;

        static Int32 Id;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Taxi_image.SaveAs(Server.MapPath("~/UploadedFile/") + Path.GetFileName(Taxi_image.FileName));
            String link = "~/UploadedFile/" + Path.GetFileName(Taxi_image.FileName);
            con.Open();
            SqlCommand cmd = con.CreateCommand();

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Material values('" + TextBox1.Text + "', '" + link + "')";
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            

            con.Close();
        

    }
       
    }
}

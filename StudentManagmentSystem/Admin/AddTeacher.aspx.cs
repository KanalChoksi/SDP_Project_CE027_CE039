using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
namespace StudentManagmentSystem.Admin
{
    public partial class AddTeacher : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Teacher  (firstName,lastName,email,address,password) values('" + fname.Text + "','" + lname.Text + "','" + email.Text + "','" + address.Text + "','" + pwd.Text + "')";
            cmd.ExecuteNonQuery();


            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            NetworkCredential nc = new NetworkCredential("nsoni12482@gmail.com", "nehal_soni");

            smtp.Credentials = nc;
            MailMessage mm = new MailMessage("nsoni12482@gmail.com", email.Text);
            mm.Subject = "Faculty's Username and Password";
            mm.Body = "Username is " + fname.Text + "</br> Password is" + pwd.Text;
            mm.IsBodyHtml = true;
            smtp.Send(mm);


            fname.Text = " ";
            lname.Text = " ";
           
            email.Text = " ";
            address.Text = " ";
            
            pwd.Text = " ";


            con.Close();

        }
    }
}
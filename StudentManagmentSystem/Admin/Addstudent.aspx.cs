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
    public partial class Addstudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Stuadd_Click(object sender, EventArgs e)
        {

            image.SaveAs(Server.MapPath("~/image/") + Path.GetFileName(image.FileName));
            String link = "~/image/" + Path.GetFileName(image.FileName);
           
            con.Open();
            SqlCommand cmd = con.CreateCommand();

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Stu  (FirstName,LastName,std,Rollno,email,address,image,phone,dob,password) values('" + fname.Text + "','" + lname.Text + "','" + std.Text + "','" + rno.Text + "','" + email.Text + "','" + address.Text + "','" + link + "','" + phone.Text + "','" + dob.Text + "','" + pwd.Text + "')";
            cmd.ExecuteNonQuery();
            
            
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            NetworkCredential nc = new NetworkCredential("", "");
            
            smtp.Credentials = nc;
            MailMessage mm = new MailMessage("", email.Text);
            mm.Subject = "Student's Username and Password";
            mm.Body = "Username is " + std.Text + "</br> Password is" + pwd.Text ;
            mm.IsBodyHtml = true;
            smtp.Send(mm);
           
            
            fname.Text = " ";
            lname.Text = " ";
            std.Text = " ";
            rno.Text = " ";
            email.Text = " ";
            address.Text = " ";
            phone.Text = " ";
            dob.Text = " ";
            pwd.Text = " ";
           
           
            con.Close();
           
        }
    }
}

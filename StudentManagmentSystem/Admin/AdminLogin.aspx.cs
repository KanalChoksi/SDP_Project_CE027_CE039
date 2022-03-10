using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagmentSystem.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Click(object sender, EventArgs e)
        {
            if(Username1.Text=="Admin" && Password1.Text=="admin@123")
            {
                Session["Admin"] = Username1.Text;
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or Password";
            }
        }
    }
}
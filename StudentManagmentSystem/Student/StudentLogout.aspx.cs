using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagmentSystem.Student
{
    public partial class StudentLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("Stud");
            Session.Remove("Stud1");
            Response.Redirect("../FirstPage.aspx");

        }
    }
}
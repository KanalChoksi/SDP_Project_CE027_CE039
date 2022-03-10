using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace StudentManagmentSystem
{
    public partial class material : System.Web.UI.Page
    {
        static String resumelink;

        static Int32 Id;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
            {
                if (uploadresume() == true)
                {
                    String query = "insert into Material(Id,std,file) values(" + Id + ",'" + TextBox1.Text + "', '" + resumelink + "')";

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True");
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();

                    TextBox1.Text = "";

                }
            }

        private Boolean uploadresume()
        {
            Boolean resumesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "application/pdf")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    getapplicationid();
                    FileUpload1.SaveAs(Server.MapPath("~/ UploadedFile/") + Id + ".pdf");

                    resumelink = "UploadedFile/" + Id+".pdf";
                    resumesaved = true;
                    Label1.Text = "";
                   
                }
                else
                {
                    Label1.Text = "Upload Resume in PDF Format Only";
                }

            }
            else
            {
                Label1.Text = "Kindly Upload Resume Before Apply in PDF Format";
            }


            return resumesaved;
        }
        public void getapplicationid()
        {

            SqlConnection scon = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True");
            String myquery = "select Id from Material";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                Id = 1;

            }
            else
            {



                
                SqlConnection scon1 = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True");
                String myquery1 = "select max(Id)from  Material";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
               Id = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
                Id = Id + 1;
                scon1.Close();
            }

        }
    }
}
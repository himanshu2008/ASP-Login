using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Login
{
    public partial class delete : System.Web.UI.Page
    {
        string comp = System.Environment.GetEnvironmentVariable("COMPUTERNAME");

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=" + comp + "\\sqlexpress;Initial Catalog=student_login;Integrated Security=true";

            string str = "delete student_info where roll_no=" + TextBox1.Text ;

            SqlCommand sc = new SqlCommand(str, con);

            sc.Connection.Open();
            sc.ExecuteNonQuery();
            sc.Connection.Close();

            Response.Redirect("display.aspx");
        }
    }
}
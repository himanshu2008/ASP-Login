using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Login
{
    public partial class insert : System.Web.UI.Page
    {
        string comp = System.Environment.GetEnvironmentVariable("COMPUTERNAME");

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=" + comp + "\\sqlexpress;Initial Catalog=student_login;Integrated Security=true";
            string str = "select * from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";

            SqlDataAdapter sd = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();

            sd.Fill(ds, "login");

            if (ds.Tables["login"].Rows.Count > 0)
                Response.Redirect("home.aspx");
            else
                Label1.Text = "Invalid username or password";

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("newuser.aspx");
        }
    }
}
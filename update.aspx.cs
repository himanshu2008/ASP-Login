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
    public partial class update : System.Web.UI.Page
    {
        string comp = System.Environment.GetEnvironmentVariable("COMPUTERNAME");

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=" + comp + "\\sqlexpress;Initial Catalog=student_login;Integrated Security=true";

            string str = "select student_info where roll_no=" + TextBox1.Text ;

            SqlDataAdapter sd = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            sd.Fill(ds, "student_info");
            if (ds.Tables["student_info"].Rows.Count > 0)
            {
                TextBox2.Text = ds.Tables["student_info"].Rows[0][1].ToString();
            }
            else
            {
                Label3.Text = "Roll Number not valid!";
            }

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=" + comp + "\\sqlexpress;Initial Catalog=student_login;Integrated Security=true";

            string str = "update student_info set student_name='" + TextBox2.Text + "'+ where roll_no=" + TextBox1.Text;

            SqlCommand sc = new SqlCommand(str, con);

            sc.Connection.Open();
            sc.ExecuteNonQuery();
            sc.Connection.Close();
            con.Close();
            Response.Redirect("display.aspx");
        }
    }
}
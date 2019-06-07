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
    public partial class display : System.Web.UI.Page
    {
        string comp = System.Environment.GetEnvironmentVariable("COMPUTERNAME");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=" + comp + "\\sqlexpress;Initial Catalog=student_login;Integrated Security=true";

            string str = "select * from student_info";

            SqlDataAdapter sd = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();

            sd.Fill(ds, "student_info");
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }
    }
}
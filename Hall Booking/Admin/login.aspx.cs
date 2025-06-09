using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select email,password from UserMst where email=@email and password=@password", con);
      
        cmd.Parameters.AddWithValue("@email", txt_Username.Text);
        cmd.Parameters.AddWithValue("@password", txt_password.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
            Response.Redirect("./AdminPanleHome.aspx");
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("../User/home.html");
    }
}
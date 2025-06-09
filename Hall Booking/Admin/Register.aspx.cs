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

public partial class Admin_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregistration_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into UserMst values('" + txtfname.Text + "','" + txtlname.Text + "','"+txtcity.Text+"','"+txtemail.Text+"','"+txtpassword.Text+"')",con);
        cmd.ExecuteNonQuery();
        lblmsg.Text = "Registration Done!!";
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtcity.Text = "";
        txtfname.Focus();
        Response.Redirect("./login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtcity.Text = "";
        txtfname.Focus();
        Response.Redirect("../User/home.html");
    }
}
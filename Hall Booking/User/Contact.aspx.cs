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

public partial class User_Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string nm = TextBox1.Text;
        string cont = TextBox2.Text;
        string msg = TextBox3.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into cust Values(@name,@con,@msg) ",con);
        cmd.Parameters.AddWithValue("@name",nm);
        cmd.Parameters.AddWithValue("@con", cont);
        cmd.Parameters.AddWithValue("@msg", msg);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = ""; 
        TextBox3.Text = "";
        Response.Write("<Script>alert('\\tThank You for Contactintg us, our team will Contact you Regarding Your Queries within 24 Hours...')</Script>");
        //Response.Redirect("home.html");

    }
}
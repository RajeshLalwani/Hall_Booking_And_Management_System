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

public partial class Admin_AdminPannle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();

        string cat = DropDownList1.SelectedItem.Text;
        string price = TextBox1.Text;
        FileUpload1.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(FileUpload1.FileName));
        string profile = "~/img/" + Path.GetFileName(FileUpload1.FileName);

        SqlCommand cmd = new SqlCommand("INSERT INTO imgGal (cat,price,img) VALUES (@cat,@price,@img) ",con);
        cmd.Parameters.AddWithValue("@cat",cat);
        cmd.Parameters.AddWithValue("@price",price);
        cmd.Parameters.AddWithValue("@img", profile);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
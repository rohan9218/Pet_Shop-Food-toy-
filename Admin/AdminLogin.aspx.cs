using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_AdminLogin : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(@"Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\Pet Clinic\\App_Data\\Pet Clinic.mdf;Integrated Security=True;User Instance=True");

    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        //cn.Open();
        //cmd.CommandText=" select Name,Password from Admin where Name='"+txtusername.Text+"'and Password='"+txtpassword.Text+"'";
        //    cmd.Connection =cn;
        //cmd.ExecuteNonQuery();
        //da.SelectCommand =cmd;
        //da.Fill (ds);
        //int count=ds.Tables[0].Rows.Count;
        //if (count==1)
        //{
        //    Response.Redirect("~/Admin/Home.aspx"); 
        //}
        //else
        //{
        //    ClientScript.RegisterStartupScript (Page.GetType(), "Login"," <script languge ='javascript'> alert ('Invalid Name and Password') </script>");
        //}
        //cn.Close();

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\Pet Clinic\\App_Data\\Pet Clinic.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        cn.Open();
        cmd.CommandText = " select Name,Password from Admin where Name='" + txtusername.Text + "'and Password='" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(ds);
        int count = ds.Tables[0].Rows.Count;
        if (count == 1)
        {
            Response.Redirect("~/Admin/Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Login", " <script languge ='javascript'> alert ('Invalid Name and Password') </script>");
        }
        cn.Close();

    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\Pet Clinic\\App_Data\\Pet Clinic.mdf;Integrated Security=True;User Instance=True");
        //SqlCommand cmd = new SqlCommand();
        //SqlDataAdapter da = new SqlDataAdapter();
        //DataSet ds = new DataSet();
        //cn.Open();
        //cmd.CommandText = " select Name,Password from Admin where Name='" ++ "'and Password='" +  + "'";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //da.SelectCommand = cmd;
        //da.Fill(ds);
        //int count = ds.Tables[0].Rows.Count;
        //if (count == 1)
        //{
        //    Response.Redirect("~/Admin/Home.aspx");
        //}
        //else
        //{
        //    ClientScript.RegisterStartupScript(Page.GetType(), "Login", " <script languge ='javascript'> alert ('Invalid Name and Password') </script>");
        //}
        //cn.Close();

    }
}
    

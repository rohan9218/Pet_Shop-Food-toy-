using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Visitors_Login2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myclinic"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select Username,Password from Registration where Username='" + txtusername.Text + "'and Password='" + txtpassword.Text + "'";
            cmd.Connection =cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand =cmd;
        da.Fill (ds);
        int count=ds.Tables[0].Rows.Count;
        if (count==1)
        {
            Session["user"] = txtusername.Text;
            Response.Redirect("~/Patient/Home.aspx"); 
        }
        else
        {
            ClientScript.RegisterStartupScript (Page.GetType(), "Login"," <script languge ='javascript'> alert ('Invalid Name and Password') </script>");
        }
        cn.Close();

    }

    }

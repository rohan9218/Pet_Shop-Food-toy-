using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Patient_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myclinic"].ConnectionString);

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
            Response.Redirect("~/Patient/Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Login", " <script languge ='javascript'> alert ('Invalid Name and Password') </script>");
        }
        cn.Close();

 
    }
}
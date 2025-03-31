using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Visitors_Register : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myclinic"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(*)from Registration where Name='" + txtname.Text + "' ";
        cmd.Connection = cn;
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        if (count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<script language='javascript'>alter('user already exist')</script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Registration values('" + txtname.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "'," + txtmob.Text + "," + txtpincode.Text + ",'" + txtgender.Text + "'," + txtfax.Text + ",'" + txtemail.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();


        }
    }
}
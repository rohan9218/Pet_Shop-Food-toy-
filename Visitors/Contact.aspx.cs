using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Visitors_Contact : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myclinic"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter dr;
    DataSet ds = new DataSet();
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void  Button1_Click(object sender, EventArgs e)
{
        cn.Open();
        cmd.CommandText = "insert into Contact values('"+txtname.Text+"',"+txtphone.Text+",'"+txtpetname.Text +"','"+txtemail.Text+"','"+txtcomment.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
}
}

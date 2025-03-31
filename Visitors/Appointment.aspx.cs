using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Visitors_Appointment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myclinic"].ConnectionString);
 
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void txtstate_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtservice_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


   
    protected void  btnsubmit_Click(object sender, EventArgs e)
{
    cn.Open();
    cmd.CommandText = "insert into Appointment values('"+txtname.Text+"','"+txtemail.Text+"',"+txtcontact.Text+",'"+txtbesttimetocallyou.Text+"','"+txtaddress.Text+"','"+txtcity.Text+"','"+txtstate.Text+"','"+txtservice.Text+"' )";
    cmd.Connection = cn;
    cmd.ExecuteNonQuery();
    cn.Close();
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "Appointment", " <script languge ='javascript'> alert ('Request Successfully') </script>");
        txtname.Text = " ";
        txtemail.Text = " ";
        txtcontact.Text = " ";
        txtbesttimetocallyou.Text = " ";
        txtaddress.Text = " ";
        txtcity.Text = " ";
            
   
}
}
}



        
    


    



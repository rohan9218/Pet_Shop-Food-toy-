using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Patient_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myclinic"].ConnectionString);
 
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        }

    protected void  Button1_Click(object sender, EventArgs e)
{
        cn.Open();
        cmd.CommandText = "insert into Feedback values ('"+txtname.Text+"','"+txtemail.Text+"',"+txtcontact.Text+",'"+txtsubject.Text+"','"+txtfeedback.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

    }
}

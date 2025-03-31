using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ManageOrder : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myclinic"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblid.Text = GridView1.SelectedRow.Cells[1].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[6].Text;

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="update [Order] set OrderStatus='"+DropDownList1.Text+"' where Oid="+lblid.Text+"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        GridView1.DataBind();
        cn.Close();
    }
}
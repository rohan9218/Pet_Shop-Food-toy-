using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_Add_Doctor : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myclinic"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Dr_id) from Doctor";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtdrid.Text = i.ToString();
        cn.Close();

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
               cn.Open();
        cmd.CommandText = "select count(*)from Doctor where Name='" + txtname.Text + "'";
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
            cmd.CommandText = " insert into Doctor values (" + txtdrid.Text + ",'" + txtname.Text + "','" + txtspecialization.Text + "','" + txtexperience.Text + "'," + txtcontact.Text + ",'" + Image1.ImageUrl + "','" + txtaddress.Text + "','" + txtemail.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
        }
        }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtdrid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtspecialization.Text = GridView1.SelectedRow.Cells[3].Text;
        txtexperience.Text = GridView1.SelectedRow.Cells[4].Text;
        txtcontact.Text = GridView1.SelectedRow.Cells[5].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[6].Text;
        txtaddress.Text = GridView1.SelectedRow.Cells[7].Text;
        txtemail.Text = GridView1.SelectedRow.Cells[8].Text;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Doctor set Dr_id=" + txtdrid.Text + ",Name='" + txtname.Text + "',Specialization='" + txtspecialization.Text + "',Experience='" + txtexperience.Text + "',Contact=" + txtcontact.Text + ",Image='" + Image1.ImageUrl + "',Address='" + txtaddress.Text + "',Email='" + txtemail.Text + "'where Dr_id=" + txtdrid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Doctor where Dr_id = " + txtdrid.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtdrid.Text = " ";
        txtname.Text = " ";
        txtspecialization.Text = " ";
        txtexperience.Text = " ";
        txtcontact.Text = " ";
        Image1.ImageUrl = " ";
        txtaddress.Text = " ";
        txtemail.Text = " ";
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
        }
    }
}
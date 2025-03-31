using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Admin_Add_Product : System.Web.UI.Page
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
        cmd.CommandText = "select count(Product_id)from Product";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtproductid.Text = i.ToString();
        cn.Close();

    }
    protected void btnupload_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Images\\" + FileUpload1.FileName;


        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(*)from Product where Product Name='" + txtproductname.Text + "'";
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
            cmd.CommandText = "insert into Product values(" + txtproductid.Text + ",'" + txtproductcategory.Text + "','" + txtproductname.Text + "'," + txtprice.Text + ",'" + txtdescription.Text + "','" + Image1.ImageUrl + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Product set Product_id=" + txtproductid.Text + ",[Product Category]='" + txtproductcategory.Text + "',[Product Name]='" + txtproductname.Text + "',Price=" + txtprice.Text + ",Description='" + txtdescription.Text + "',Image='" + Image1.ImageUrl + "'where Product_id=" + txtproductid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Product where Product_id = " + txtproductid.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtproductid.Text = " ";
        txtproductcategory.Text = " ";
        txtproductname.Text = " ";
        txtprice.Text = " ";
        txtdescription.Text = " ";
        Image1.ImageUrl = " ";
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtproductid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtproductcategory.Text = GridView1.SelectedRow.Cells[2].Text;
        txtproductname.Text = GridView1.SelectedRow.Cells[3].Text;
        txtprice.Text = GridView1.SelectedRow.Cells[4].Text;
        txtdescription.Text = GridView1.SelectedRow.Cells[5].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[6].Text;
    }
}

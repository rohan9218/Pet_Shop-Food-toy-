using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

public partial class Patient_Payment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Pet Clinic\App_Data\Pet Clinic.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    ReportDocument crpt = new ReportDocument();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

        Image3.Visible = false;

        cn.Open();
        cmd.CommandText = "select Count(PaymentId) from Payment";
        cmd.Connection = cn;
        int x = Convert.ToInt32(cmd.ExecuteScalar());
        x++;
        lblpayid.Text = x.ToString();
        cn.Close();

        lbloid.Text = Session["id"].ToString();
        lblpdat.Text = System.DateTime.Now.ToShortDateString();


        lblcname.Text = Session["user"].ToString();
        lbltamt.Text = Session["Total"].ToString();
        double t = Convert.ToDouble(lbltamt.Text);
        double GST = Convert.ToDouble(lblgst.Text);
        double net = t + ((t * GST) / 100);
        double dis = Convert.ToDouble(lbldis.Text);
        double net1 = net - (net * dis / 100);
        lblnet.Text = net1.ToString();
    }
    protected void btnorder_Click(object sender, EventArgs e)
    {
         cn.Open();
            cmd.CommandText = "insert Payment values(" + lblpayid.Text + "," + lbloid.Text + ",'" + lblpdat.Text + "',@p1," + lbldis.Text + "," + lblgst.Text + "," + lblnet.Text + "," + lbltamt.Text + ",'" + lblcname.Text + "')";
            if (rd1.Checked == true)
                cmd.Parameters.AddWithValue("@p1", rd1.Text);
            else
                cmd.Parameters.AddWithValue("@p1", rd2.Text);
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<Script language = 'javascript'>alert('Order Place successfully')</Script>");

    }
    protected void rdmethod_CheckedChanged(object sender, EventArgs e)
    {
        if (rd1.Checked == true)
        {
            Image3.Visible = false;
        }
        else
        {
            Image3.Visible = true;
        }
    }
    protected void rdpaymethod_CheckedChanged(object sender, EventArgs e)
    {

        if (rd2.Checked == true)
        {
            Image3.Visible = true;
        }
        else
        {
            Image3.Visible = false;
        }
    }
    protected void btnbill_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter dal = new SqlDataAdapter("select distinct * from  billview where Oid=" + lbloid.Text + "", cn);
        dal.Fill(ds, "billview");
        dal.Fill(ds);
        crpt.Load(Server.MapPath(@"~/Report/BillRepot.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "billview");
        crpt.Refresh();
        cn.Close();
    }
}
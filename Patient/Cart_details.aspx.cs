using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Patient_Cart_details : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Pet Clinic\App_Data\Pet Clinic.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    int p, q, t;
    //int st2;
    //int st3, id;

    protected void Page_Load(object sender, EventArgs e)
    {
        lblname.Text = Session["user"].ToString();
        cn.Open();
        cmd.CommandText = "select count(username) from Cart_details where username='"+lblname.Text+"'";
        cmd.Connection = cn;
        int y = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        if (y == 0)
            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "< script language = 'javascriot'>alert('Your Cart is Empty')</Script>");
        else
        {
            cn.Open();
            cmd.CommandText = "select MAX(Oid) from [Order]";
            cmd.Connection = cn;
            int x = Convert.ToInt32(cmd.ExecuteScalar());
            if (x == 0)
            {
                x = 1;
                lbloid.Text = x.ToString();
            }
            else 
            {
                x++;
                lbloid.Text = x.ToString();
            }

            cn.Close();

            lbldate.Text = System.DateTime.Now.ToShortDateString();
            cn.Open();
            cmd.CommandText = "select sum (Total)from Cart_details where username='" + lblname.Text + "'";
            double amt = Convert.ToDouble(cmd.ExecuteScalar());
            cmd.Connection = cn;
            lbltot.Text = amt.ToString();
            lbltime.Text = System.DateTime.Now.ToShortTimeString();
            cn.Close();

            /*x++;
            lbloid.Text = x.ToString();
            cn.Close();
            lblname.Text = Session["user"].ToString();
            lbldate.Text = System.DateTime.Now.ToShortDateString();
            cn.Open();
            cmd.CommandText = "select sum (Total)from Cart_details where username='"+lblname.Text+"'";
            double amt = Convert.ToDouble(cmd.ExecuteScalar());
            cmd.Connection = cn;
            lbltot.Text = amt.ToString();
            lbltime.Text = System.DateTime.Now.ToShortTimeString();
            cn.Close();*/

        }
    }
    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        //for (int i = 0; i < GridView1.Rows.Count; i++)
        //{
        //     PID = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
        //    string PName  = (GridView1.Rows[i].Cells[1].Text);
        //    double price = Convert.ToInt32(GridView1.Rows[i].Cells[2].Text);
        //    //int PID = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
        //      //String name = Session["Login"].ToString();
        //  //  lblname2.Text = name.ToString();
        //    //DropDownList q = (DropDownList)GridView1.Rows[i].FindControl("DropDownList") as DropDownList;
        //    int p = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);

        //     q = Convert.ToInt32(GridView1.Rows[i].Cells[4].Text);
        //    //double t = Convert.ToDouble(GridView1.Rows[i].Cells[5].Text);
        //    cn.Open();
        //    cmd.CommandText ="insert into CartDetails values(" + PID + ",'" + PName + "'," + price + ","+ p +",'" + q + "')";
        //    cmd.Connection = cn;
        //    cmd.ExecuteNonQuery();
        //    cn.Close();
        //}

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {


            int oid = Convert.ToInt32(lbloid.Text);
            
            int id = Convert.ToInt32(GridView1.Rows[i].Cells[1].Text);
            string name = Session["user"].ToString();
            string cat = Convert.ToString(GridView1.Rows[i].Cells[3].Text);
            string pname = Convert.ToString(GridView1.Rows[i].Cells[2].Text);
            
            p = Convert.ToInt32(GridView1.Rows[i].Cells[4].Text);
            t = Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
            q = Convert.ToInt32(GridView1.Rows[i].Cells[6].Text);
            string username = Convert.ToString(GridView1.Rows[i].Cells[7].Text);

            cn.Open();
            cmd.CommandText = "insert into order_details values(" + oid + "," + id + "," + q + "," + p + "," + t + ",'"+name+"','" + pname + "','" + txtaddress.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

        }


        string Status = "in Process";
        cn.Open();
        //cmd.CommandText="insert into [Order] values ("+lblid.Text+",'"+lblname.Text+"','"+txtcaddress.Text+"',"+txtccont+")";
        cmd.CommandText = "insert into [Order] values (" + lbloid.Text + ",'"+txtaddress.Text+"'," + txtcont.Text+ ",'" + lbldate.Text + "'," + lbltot.Text + ",'" + Status + "','" + lblname.Text + "','"+txtcity.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "< script language = 'javascriot'>alert('Order Confirmed')</Script>");
        Session["id"] = lbloid.Text;
        Session["Total"] = lbltot.Text;

        //cn.Open();
        //cmd.CommandText = "Select Available_Stock from product";
        //cmd.Connection = cn;
        //st2 = Convert.ToInt32(cmd.ExecuteScalar());
        //cn.Close();

        //int st3 = st2 - q;
        //cn.Open();
        //cmd.CommandText = " update [Product] set Available_Stock = " + st3 + " Where PId=" + id + "";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //cn.Close();

        cn.Open();
        cmd.CommandText = "Delete from  Cart_details where username='"+lblname.Text+"'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        Response.Redirect("~\\Patient\\Payment.aspx");
        
    }
}
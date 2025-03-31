using System; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Patient_Product : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myclinic"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int a;
        Button btn = sender as Button;
        a = Convert.ToInt32(btn.CommandArgument);
        Session["pid"] = a;
        Response.Redirect("~/Patient/Cart.aspx");


    }
    protected void btnaddtocart_Click(object sender, EventArgs e)
    {
         int count = DataList1.Items.Count;
            for (int i = 0; i < count; i++)
            {
                Label lblname = DataList1.Items[i].FindControl("lblname") as Label;
                string n = lblname.Text;

                Label lblprice = DataList1.Items[i].FindControl("lblprice") as Label;
                int p = Convert.ToInt32(lblprice.Text);

                DropDownList d = DataList1.Items[i].FindControl("drpque") as DropDownList;
               string q = (d.Text);



               Label lbldescription = DataList1.Items[i].FindControl("lbldescription") as Label;
               string sp = lbldescription.Text;

               Label lblcate = DataList1.Items[i].FindControl("lblcate") as Label;
               string sub = lblcate.Text;


                
                string l = Session["user"].ToString();
                //string sub = Session["pid"].ToString();
                
                int pid = Convert.ToInt32(Session["pid"].ToString());
                string r=d.Text;

                if(r!="")
                {
                    int t = (p * Convert.ToInt32 (q));
                    Label lbltot = DataList1.Items[i].FindControl("lbltot") as Label;
                    lbltot.Text = t.ToString();

                cn.Open();
                cmd.CommandText = "insert into Cart_details values(" + pid + ",'" + n + "','" + sub + "'," + p + "," + t + "," + q + ",'" + l + "')";
                cmd.Connection = cn;
                cmd.ExecuteNonQuery();
                cn.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script launguage='Javascript'>alert('Add to Cart Successfully!!!')</script>");
                }
                else
                {
                     ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script launguage='Javascript'>alert('select quantity first')</script>");
               
                }
                
                
                }
        }
    
    protected void drpque_SelectedIndexChanged(object sender, EventArgs e)
    {
        {
            int count = DataList1.Items.Count;
            for (int i = 0; i < count; i++)
            {
                Label lblprice = DataList1.Items[i].FindControl("lblprice") as Label;
                int p = Convert.ToInt32(lblprice.Text);
                DropDownList d = DataList1.Items[i].FindControl("drpque") as DropDownList;
                int q = Convert.ToInt32(d.Text);
                int t = (p * q);
                Label lbltot = DataList1.Items[i].FindControl("lbltot") as Label;
                lbltot.Text = t.ToString();


            }
        }
    }
}
        
            

 
           



  
    
 
   

    

    
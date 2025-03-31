using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_fishfood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a;
        Button btn = sender as Button;
        a = Convert.ToInt32(btn.CommandArgument);
        Session["pid"] = a;
        Response.Redirect("~/Patient/Product.aspx");
  
  
    }
}
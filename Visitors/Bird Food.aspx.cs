﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitors_Bird_Food : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        //int a;
        //Button btn = sender as Button;
        //a = Convert.ToInt32(btn.CommandArgument);
        //Session["pid"] = a;
        //Response.Redirect("~/Visitors/Product.aspx");
  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a;
        Button btn = sender as Button;
        a = Convert.ToInt32(btn.CommandArgument);
        Session["pid"] = a;
        Response.Redirect("~/Visitors/Product.aspx");
  
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.SqlClient;
using System.Data;

public partial class Report_Doctor : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\Pet Clinic\\App_Data\\Pet Clinic.mdf;Integrated Security=True;User Instance=True");
    SqlConnection cmd = new SqlConnection();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    ReportDocument crpt = new ReportDocument();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from Doctor", cn);
        da.Fill(ds, "Doctor");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Report\DoctorReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Doctor");
        crpt.Refresh();
        cn.Close();
    }
}
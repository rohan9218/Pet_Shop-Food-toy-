﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Report_Appoinment" %><%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" ReportSourceID="+" />
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="Report\AppoinmentReport.rpt">
        </Report>
    </CR:CrystalReportSource>
</asp:Content>


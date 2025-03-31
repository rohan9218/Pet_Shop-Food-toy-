<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/patientmaster.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Patient_Payment" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .style11
    {
        width: 80%;
    }
    .style12
    {
        font-size: large;
    }
    .style13
    {
        width: 602px;
        text-align: left;
    }
        .style14
        {
        width: 602px;
        height: 34px;
        text-align: left;
    }
        .style15
        {
            height: 34px;
            width: 279px;
        }
        .style16
        {
            width: 279px;
        }
    .style17
    {
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" class="style11" style="border: thin solid #008000">
    <tr>
        <td class="style12" colspan="2">
            <strong>Payment Details</strong></td>
    </tr>
    <tr>
        <td class="style13">
            Payment_id</td>
        <td class="style16">
            <asp:Label ID="lblpayid" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style14">
            order_id</td>
        <td class="style15">
            <asp:Label ID="lbloid" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Payment date</td>
        <td class="style16">
            <asp:Label ID="lblpdat" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style13">
            custmer name</td>
        <td class="style16">
            <asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style14">
            Discount</td>
        <td class="style15">
            <asp:Label ID="lbldis" runat="server" Text="10"></asp:Label>
            %</td>
    </tr>
    <tr>
        <td class="style13">
            GST</td>
        <td class="style16">
            <asp:Label ID="lblgst" runat="server" Text="28"></asp:Label>
            %</td>
    </tr>
    <tr>
        <td class="style13">
            Total amount</td>
        <td class="style16">
            <asp:Label ID="lbltamt" runat="server" Text="Label"></asp:Label>
            Rs</td>
    </tr>
    <tr>
        <td class="style13">
            Net amount</td>
        <td class="style16">
            <asp:Label ID="lblnet" runat="server" Text="Label"></asp:Label>
            Rs</td>
    </tr>
    <tr>
        <td colspan="2" class="style17">
            Payment Method&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rd1" runat="server" GroupName="payment" 
                Text="COD(cash on delivery)" oncheckedchanged="rdmethod_CheckedChanged" 
                AutoPostBack="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rd2" runat="server" GroupName="payment" 
                Text="UPI" oncheckedchanged="rdpaymethod_CheckedChanged" 
                AutoPostBack="True" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Panel ID="Panel1" runat="server">
                        <asp:Image ID="Image3" runat="server" Height="144px" 
                ImageUrl="~/Images/QR.jpg" Width="195px" />
            
            </asp:Panel>
            </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnorder" runat="server" BackColor="#336600" Height="30px" 
                onclick="btnorder_Click" Text="Place Order" Width="130px" 
                ForeColor="White" BorderStyle="None" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnbill" runat="server" BackColor="#336600" Height="30px" 
                Text="Print Bill" Width="130px" onclick="btnbill_Click" 
                ForeColor="White" BorderStyle="None" />

        </td>
    </tr>
    <tr>
        <td colspan="2">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="true" />
        </td>
    </tr>
</table>
</asp:Content>


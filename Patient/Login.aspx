<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/patientmaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Patient_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            height: 29px;
        }
        .style5
        {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" frame="box">
        <tr>
            <td class="style6" colspan="2" style="font-size: large; font-weight: 700">
                Login Or Create an Account</td>
        </tr>
        <tr>
            <td align="center" style="font-weight: 700">
                New Customer</td>
            <td align="center">
                Registered Customer</td>
        </tr>
        <tr>
            <td class="style5">
                By creating an account with us you will be able to move through the check out 
                process&nbsp; faster,<br />
                store multiple shipping addresses, view and track your orders in your account 
                and more.
            </td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp; If you have an account with us, please log in.&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnsignup" runat="server" BackColor="Maroon" ForeColor="White" 
                    Height="35px" PostBackUrl="~/Visitors/Login2.aspx" Text="Sign Up" 
                    Width="270px" BorderStyle="None" />
            </td>
            <td align="center">
                &nbsp; Username&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                Password</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:Button ID="btnlogin" runat="server" BackColor="Maroon" ForeColor="White" 
                    Height="35px" onclick="btnlogin_Click" PostBackUrl="~/Patient/Login.aspx" 
                    Text="Login" Width="270px" />
            </td>
        </tr>
    </table>
</asp:Content>


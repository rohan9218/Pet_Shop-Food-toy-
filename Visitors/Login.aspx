<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/Visitormaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Visitors_Login2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 80%;
            height: 100%;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            height: 29px;
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
            <td align="center">
                New Customer</td>
            <td align="center">
                Registered Customer</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp; If you have an account with us, please log in.&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnsignup" runat="server" BackColor="Maroon" ForeColor="White" 
                    Height="35px" PostBackUrl="~/Visitors/Register.aspx" Text="Sign Up" 
                    Width="180px" />
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
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="300px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:Button ID="btnlogin" runat="server" BackColor="Maroon" ForeColor="White" 
                    Height="35px" onclick="btnlogin_Click" 
                    Text="Login" Width="270px" />
            </td>
        </tr>
    </table>
</asp:Content>


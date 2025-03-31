<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/Visitormaster.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Visitors_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 80%;
        height: 0;
    }
    .style5
    {
        width: 80%;
        height: 100%;
    }
    .style6
    {
        height: 26px;
        font-weight: 700;
    }
    .style7
    {
        height: 68px;
    }
    .style8
    {
        height: 68px;
        width: 333px;
    }
    .style9
    {
        width: 333px;
    }
    .style12
    {
        height: 46px;
    }
        .style13
        {
            height: 327px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style4" frame="box">
    <tr>
        <td align="center" style="font-weight: 700; font-size: x-large">
            Create an Account</td>
    </tr>
    <tr>
        <td class="style13">
            <table align="center" cellpadding="2" class="style5">
                <tr>
                    <td align="center" class="style6" colspan="2">
                        Register Account</td>
                </tr>
                <tr>
                    <td align="left" class="style7">
                        Name<br />
                        <asp:TextBox ID="txtname" runat="server" Height="35px" Width="250px"></asp:TextBox>
                        <br />
                    </td>
                    <td class="style8">
                        Email Address<br />
                        <asp:TextBox ID="txtemailaddress" runat="server" Height="35px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password<br />
                        <asp:TextBox ID="txtpassword" runat="server" Height="35px" Width="250px" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="style9">
                        Confirm Password<br />
                        <asp:TextBox ID="txtconfirmpassword" runat="server" Height="35px" Width="250px" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btnsubmit" runat="server" BackColor="Maroon" BorderStyle="None" 
                            ForeColor="White" Height="35px" onclick="btnsubmit_Click" Text="Submit" 
                            Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        Sign in Using<br />
                    </td>
                </tr>
                <tr>
                    <td class="style12" colspan="2">
                        If you have an exsting account with any of the following sites you can login 
                        here by clicking on the icon below.</td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btnlogin" runat="server" BackColor="Maroon" ForeColor="White" 
                            Height="35px" onclick="txtlogin_Click" Text="Login" Width="200px" 
                            PostBackUrl="~/Visitors/Login.aspx" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 25%;
            width: 100%;
        }
        .style3
        {
            height: 49px;
            width: 100%;
        }
        .style4
        {
            width: 100%;
        }
        </style>
</head>
<body text="Admin Login">
    <form id="form1" runat="server">
    <div 
        align="center" 
        
        
        
        
        style="border: thin solid #000000; background-color: #FFFFFF; height: 653px; background-image: url('http://localhost/Images/emergency.jpg'); background-repeat: no-repeat;">
    
        &nbsp;<br />
        <br />
        <br />
        <br />
        <table 
            align="center" cellpadding="2" cellspacing="10" 
            
            
            
            style="border: thin solid #000000; height: 251px; margin-top: 47px; background-image: url('http://localhost/Images/03-02-2020/photo-1517884206294-f455d802a8a0.jpeg'); background-repeat: no-repeat; background-color: #CCCCCC;">
            <tr>
                <td style="font-weight: 700; text-align: center; font-size: xx-large;" 
                    align="center" class="style2">
                    Admin Login</td>
            </tr>
            <tr>
                <td align="center" height="25%" class="style4">
                    Username</td>
            </tr>
            <tr>
                <td style="font-weight: 700; text-align: center;" align="center" height="25%" 
                    bgcolor="White" class="style4">
                    <asp:TextBox ID="txtusername" runat="server" Height="35px" Width="250px" 
                        BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td 
                    align="center" height="25%" class="style4">
                    Password</td>
            </tr>
            <tr>
                <td style="font-weight: 700; font-size: x-large;" align="center" height="25%" 
                    bgcolor="White" class="style4">
                    <asp:TextBox ID="txtpassword" runat="server" Height="35px" TextMode="Password" 
                        Width="250px" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" align="center" class="style3">
                    <asp:Button ID="btnlogin" runat="server" BackColor="Maroon" ForeColor="Black" 
                        Height="35px" onclick="btnlogin_Click1" Text="Log in" Width="270px" 
                        style="font-size: x-large" BorderStyle="None" />
                </td>
            </tr>
        </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

               
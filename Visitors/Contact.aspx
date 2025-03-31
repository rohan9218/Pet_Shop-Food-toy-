<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/Visitormaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Visitors_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 90%;
            height: 0;
        }
        .style5
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="6" class="style4">
        <tr>
            <td style="text-align: center; font-size: xx-large" colspan="2">
                CONTACT<hr noshade="noshade" size="2" 
                    style="color: #800000; background-color: #800000; font-size: small;" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                    <span class="style5">Contact Our Veterinary Hospital Today!</span><br />
                    Please fill out the form below to contact Veterinary Hospital &amp; Urgent Care. 
                    If you have a more urgent matter, please call us at
                    91<strong style="box-sizing: border-box;">-3456234500</strong> or send us an 
                    email at petcare<a href="mailto:arkvethosp@gmail.com" 
                        style="box-sizing: border-box; color: rgb(59, 181, 74); font-style: italic; font-weight: 700; outline-color: invert; outline-style: none; outline-width: 0px; text-decoration: underline;">@gmail.com</a>. Please note that emailing us may take up to 24hrs for 
                    a response
                    </td>
        </tr>
        <tr>
            <td><table width="80%" align="center" cellpadding="5" cellspacing="3"><tr>
               <td> Your Name<br />
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
                   <br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ControlToValidate="txtname" ErrorMessage="Name is requried" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Pet&#39;s Name<br />
                <asp:TextBox ID="txtpetname" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpetname" ErrorMessage="Pet name is requried" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Phone Number<br />
                <asp:TextBox ID="txtphone" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="txtphone" ErrorMessage="Enter 10 Digit" 
                    ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td>
                Email<br />
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txtemail" ErrorMessage="Incorrect Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Questions or Comments<br />
                <asp:TextBox ID="txtcomment" runat="server" Height="60px" TextMode="MultiLine" style="border-radius:10px;"
                    Width="875px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnsendrequest" runat="server" BorderStyle="None" Height="30px" 
                    style="font-family: Arial, Helvetica, sans-serif; border-radius:10px; font-size: medium; color: #FFFFFF; font-weight: 700; background-color: #003366" 
                    Text="Send Request" Width="200px" onclick="Button1_Click" />
                <br />
                <br />
            </td></tr></table></td>
        </tr>
    </table>
</asp:Content>


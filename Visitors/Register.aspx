<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/Visitormaster.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Visitors_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 80%;
        }
        .style5
        {
            font-size: x-large;
        }
        .style6
        {
            width: 637px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="4" cellspacing="0" class="style4">
        <tr>
            <td colspan="4" style="text-align: left; font-size: x-large">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address Details</td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                Name</td>
            <td class="style6">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Name is requried" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                Gender</td>
            <td>
                <asp:RadioButtonList ID="txtgender" runat="server" CellPadding="2" 
                    CellSpacing="0" Height="30px" Width="400px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                Address</td>
            <td class="style6">
                <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="400px"></asp:TextBox>
            </td>
            <td rowspan="2">
                &nbsp;</td>
            <td colspan="2" rowspan="2">
                &nbsp;</td>
            <td rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                City</td>
            <td class="style6">
                <asp:TextBox ID="txtcity" runat="server" Height="30px" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                Pincode</td>
            <td class="style6">
                <asp:TextBox ID="txtpincode" runat="server" Height="30px" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtpincode" ErrorMessage="Pin code is requried" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtpincode" ErrorMessage="Enter 6 digits" ForeColor="Red" 
                    MaximumValue="5" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td colspan="6" style="font-weight: 700; font-size: x-large">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Contact <span class="style5">Information</span>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                Contact</td>
            <td class="style6">
                <asp:TextBox ID="txtmob" runat="server" Height="30px" Width="400px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="txtmob" ErrorMessage="Enter 10 digits" ForeColor="Red" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtmob" ErrorMessage="Contact is requried" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                Tel No</td>
            <td>
                <asp:TextBox ID="txttel" runat="server" Height="30px" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="txttel" ErrorMessage="Enter 8 digits" ForeColor="Red" 
                    MaximumValue="7" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                Fax</td>
            <td class="style6">
                <asp:TextBox ID="txtfax" runat="server" Height="30px" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtfax" ErrorMessage="Fax is requried" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ControlToValidate="txtfax" ErrorMessage="Enter 10 digits" ForeColor="Red" 
                    MaximumValue="9" MinimumValue="0"></asp:RangeValidator>
            </td>
            <td>
                Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Incorrect Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="font-size: x-large; font-weight: 700;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Login Details</td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                Username</td>
            <td class="style6">
                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="400px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="400px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
            <td colspan="4" style="text-align: center">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#3366FF" ForeColor="White" 
                    Height="35px" onclick="btnsubmit_Click" Text="Submit" Width="270px" />
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


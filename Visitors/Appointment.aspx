<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/Visitormaster.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Visitors_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="6" class="" width="90%">
        <tr>
            <td style="text-align: center; font-size: xx-large" colspan="2">
                &nbsp;APPOINTMENT FORM<hr noshade="noshade" size="2" 
                    style="color: #800000; background-color: #800000; font-size: small;" />
            </td>
        </tr>
      <tr>
        <td>
            Name<br />
            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
        <td>
            Email<br />
            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
        &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Incorrect Email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ForeColor="Red"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Contact<br />
            <asp:TextBox ID="txtcontact" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter 10 Digit" 
                ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtcontact" ErrorMessage="Contact no is required" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        <td>
            Address<br />
            <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            State<br />
            <asp:DropDownList ID="txtstate" runat="server" Height="40px" Width="400px" 
                style="border-radius:10px;" 
                onselectedindexchanged="txtstate_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                <asp:ListItem>Assam</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Chhattisgarh</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Gujarat</asp:ListItem>
                <asp:ListItem>Haryana</asp:ListItem>
                <asp:ListItem>Himachal Pradesh</asp:ListItem>
                <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                <asp:ListItem>Jharkhand</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Kerla</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Manipur</asp:ListItem>
                <asp:ListItem>Meghalaya</asp:ListItem>
                <asp:ListItem>Mizoram</asp:ListItem>
                <asp:ListItem>Nagaland</asp:ListItem>
                <asp:ListItem>Odisha</asp:ListItem>
                <asp:ListItem>Panjab</asp:ListItem>
                <asp:ListItem>Rajasthan</asp:ListItem>
                <asp:ListItem>Sikkim</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
                <asp:ListItem>Telangana</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            City<br />
            <asp:TextBox ID="txtcity" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Service<br />
            <asp:DropDownList ID="txtservice"  runat =server Height="40px" Width="400px" style="border-radius:10px;" 
                BackColor="White" onselectedindexchanged="txtservice_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Gromming</asp:ListItem>
                <asp:ListItem>Dog Training</asp:ListItem>
                <asp:ListItem>Veterinary Care</asp:ListItem>
                <asp:ListItem>Bathing</asp:ListItem>
                <asp:ListItem>General Check Up</asp:ListItem>
                <asp:ListItem>Complet Health Care</asp:ListItem>
                <asp:ListItem>Consultaion &amp; Treatment</asp:ListItem>
                <asp:ListItem>Complet Diagnostic Care</asp:ListItem>
                <asp:ListItem>Vertinity Physician</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            Best Time To Call You<br />
            <asp:TextBox ID="txtbesttimetocallyou" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtbesttimetocallyou" 
                ErrorMessage="This field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: left">
            <br />
            <asp:Button ID="btnsendrequest" runat="server" Height="35px" Width="350px" 
                
                style="border-radius:10px; color: #FFFFFF; font-size: medium; font-family: Arial, Helvetica, sans-serif; font-weight: 700; background-color: #003366;" 
                Text="Send Request" BorderStyle="None" onclick="btnsubmit_Click" />
            &nbsp;<br />
            <br />
            <br style="text-align: left" />
        </td>
    </tr>
</table>
    </asp:Content>


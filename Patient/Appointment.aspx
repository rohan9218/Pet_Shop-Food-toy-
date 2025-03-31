<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/patientmaster.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Patient_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: center;
        }
    </style>
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
            <td align="left">
                Name<br />
&nbsp;<asp:TextBox ID="txtname" runat="server" Height="30px" Width="400px" 
                    style="border-radius:10px;" ontextchanged="txtname_TextChanged"></asp:TextBox>
          &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Name Is requried" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="left">
            Email&nbsp;&nbsp;
                <br />
                &nbsp;<asp:TextBox ID="txtemail" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
        &nbsp;
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txtemail" ErrorMessage="Incorrect Email" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Email is Requried" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">
                Contact<br />
                &nbsp;<asp:TextBox ID="txtcontact" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter 10 Digits" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcontact" ErrorMessage="Contact is  requried" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="left">
            &nbsp;Address
                <br />
&nbsp;<asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
            State
                <br />
&nbsp;<asp:DropDownList ID="txtstate" runat="server" Height="40px" Width="400px" 
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
            <td align="left">
            City<br />
&nbsp;<asp:TextBox ID="txtcity" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
            Service<br />
&nbsp;<asp:DropDownList ID="txtservice"  runat =server Height="40px" Width="400px" style="border-radius:10px;" 
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
            <td align="left">
                Best Time To Call You<br />
&nbsp;&nbsp;
                <asp:TextBox ID="txtbesttimetocallyou" runat="server" Height="30px" Width="400px" style="border-radius:10px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtbesttimetocallyou" 
                    ErrorMessage="This Field can't be empty " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="style2">
                &nbsp;<asp:Button ID="btnsendrequest" runat="server" BackColor="#0066FF" 
                    ForeColor="White" Height="35px" onclick="btnsendrequest_Click" 
                    Text="Send Request" Width="270px" style="border-radius:10px;" />
            &nbsp;<br />
                <br />
                <br style="text-align: left" />
            </td>
        </tr>
    </table>
</asp:Content>


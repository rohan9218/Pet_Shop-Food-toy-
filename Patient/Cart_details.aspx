<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/patientmaster.master" AutoEventWireup="true" CodeFile="Cart_details.aspx.cs" Inherits="Patient_Cart_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 80%;
        }
        .style3
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
        }
        .style4
        {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" class="style2">
        <tr>
            <td colspan="2" style="text-align: left">
                <span class="style3"><strong>Cart Details</strong></span><asp:GridView 
                    ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="957px" 
                    DataKeyNames="Pid">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT * FROM [Cart_details] WHERE ([username] = @username)"
                    DeleteCommand="delete from [Cart_details] where [Pid]=@Pid">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" style="text-align: left">
                Shopping Details</td>
            <td style="text-align: left">
                Order Details</td>
        </tr>
        <tr>
            <td class="style4" style="text-align: left">
                Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left">
                Order Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbloid" runat="server" Text="lbloid"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: left">
                Address&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left">
                Customer Name&nbsp;
                <asp:Label ID="lblname" runat="server" Text="lblname"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: left">
                City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left">
                Order Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbldate" runat="server" Text="lbldate"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: left">
                Pin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left">
                Total Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbltot" runat="server" Text="lbltot"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: left">
                Contact&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtcont" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left">
                Order Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbltime" runat="server" Text="lbltime"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <br />
                <asp:Button ID="btnconfirm" runat="server" Text="Confirm Order" 
                    onclick="btnconfirm_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


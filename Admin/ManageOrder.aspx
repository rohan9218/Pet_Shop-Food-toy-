<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.master" AutoEventWireup="true" CodeFile="ManageOrder.aspx.cs" Inherits="Admin_ManageOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            font-family: "Times New Roman", Times, serif;
            font-size: 16pt;
        }
    .style6
    {
        font-family: "Times New Roman", Times, serif;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style4">
        <tr>
            <td class="style5">
                <strong>Manage Order</strong></td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Oid" HeaderText="Oid" SortExpression="Oid" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" 
                            SortExpression="Contact" />
                        <asp:BoundField DataField="odate" HeaderText="odate" SortExpression="odate" />
                        <asp:BoundField DataField="totalAmount" HeaderText="totalAmount" 
                            SortExpression="totalAmount" />
                        <asp:BoundField DataField="orderStatus" HeaderText="orderStatus" 
                            SortExpression="orderStatus" />
                        <asp:BoundField DataField="CustName" HeaderText="CustName" 
                            SortExpression="CustName" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Order]"
                    DeleteCommand="delete from [Order]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style6"><strong>Order Status&nbsp;&nbsp; </strong>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="28px">
                    <asp:ListItem>Select Status</asp:ListItem>
                    <asp:ListItem>In Process</asp:ListItem>
                    <asp:ListItem>Delivered</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


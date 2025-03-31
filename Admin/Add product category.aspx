<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.master" AutoEventWireup="true" CodeFile="Add product category.aspx.cs" Inherits="Admin_Add_product_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style1">
        <tr>
            <td>
                Category_id</td>
            <td>
                <asp:TextBox ID="txtcategoryid" runat="server" Height="30px" Width="200px" 
                    BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Category&nbsp; Name</td>
            <td>
                <asp:TextBox ID="txtcategoryname" runat="server" Height="30px" Width="200px" 
                    BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnew" runat="server" BorderStyle="Solid" Height="30px" 
                    onclick="btnnew_Click" Text="New" Width="150px" BackColor="White" 
                    ForeColor="Black" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" BorderStyle="Solid" Height="30px" 
                    onclick="btnsave_Click" Text="Save" Width="150px" BackColor="White" 
                    ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BorderStyle="Solid" Height="30px" 
                    onclick="btnupdate_Click" Text="Update" Width="150px" 
                    BackColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" BorderStyle="Solid" 
                    onclick="btndelete_Click" Text="Delete" Width="150px" Height="30px" 
                    BackColor="White" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Category_id" HeaderText="Category_id" 
                            SortExpression="Category_id" />
                        <asp:BoundField DataField="Category_name" HeaderText="Category_name" 
                            SortExpression="Category_name" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


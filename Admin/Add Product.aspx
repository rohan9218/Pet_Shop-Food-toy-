<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.master" AutoEventWireup="true" CodeFile="Add Product.aspx.cs" Inherits="Admin_Add_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
    {            text-align: center;
        }
    .style3
    {
        height: 36px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style1">
    <tr>
        <td rowspan="3" align="center">
            <asp:Image ID="Image1" runat="server" Height="150px" Width="200px" 
                BorderStyle="None"  ImageUrl="~/Images/pet-icon.png"/>
        </td>
        <td>
            Product_id</td>
        <td>
            <asp:TextBox ID="txtproductid" runat="server" Height="30px" Width="200px" 
                BorderStyle="Solid"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Product Category</td>
        <td>
            <asp:DropDownList ID="txtproductcategory" runat="server" Height="30px" 
                Width="200px">
                <asp:ListItem>Bird Food</asp:ListItem>
                <asp:ListItem>Brush</asp:ListItem>
                <asp:ListItem>Cat Food</asp:ListItem>
                <asp:ListItem>Collars</asp:ListItem>
                <asp:ListItem>Combs</asp:ListItem>
                <asp:ListItem>Colthing</asp:ListItem>
                <asp:ListItem>Conditioners</asp:ListItem>
                <asp:ListItem>Dog Food</asp:ListItem>
                <asp:ListItem>Fish Food</asp:ListItem>
                <asp:ListItem>Nail Clippers</asp:ListItem>
                <asp:ListItem>Shampoo</asp:ListItem>
                <asp:ListItem>Soaps</asp:ListItem>
                <asp:ListItem>Toys</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Product Name</td>
        <td class="style3">
            <asp:TextBox ID="txtproductname" runat="server" Height="30px" Width="200px" 
                BorderStyle="Solid"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;<asp:FileUpload 
                ID="FileUpload1" runat="server" Height="35px" Width="200px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnupload" runat="server" BorderStyle="None" 
                Height="35px" onclick="btnupload_Click1" Text="Upload" Width="200px" 
                BackColor="#003399" ForeColor="White" />
        </td>
        <td>
            Price</td>
        <td>
            <asp:TextBox ID="txtprice" runat="server" Height="30px" Width="200px" 
                BorderStyle="Solid"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</td>
        <td>
            Description</td>
        <td>
            <asp:TextBox ID="txtdescription" runat="server" Height="30px" Width="200px" 
                BorderStyle="Solid"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;
            <asp:Button ID="btnnew" runat="server" BorderStyle="None" Height="35px" 
                Text="New" Width="200px" onclick="btnnew_Click" 
                style="color: #FFFFFF; font-weight: 700; background-color: #003366" 
                BackColor="#990033" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsave" runat="server" BorderStyle="None" Height="35px" 
                Text="Save" Width="200px" onclick="btnsave_Click" 
                style="color: #FFFFFF; font-weight: 700; background-color: #003366" 
                BackColor="Maroon" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnupdate" runat="server" BorderStyle="None" Height="35px" 
                Text="Update" Width="200px" onclick="btnupdate_Click" 
                style="color: #FFFFFF; font-weight: 700; background-color: #003366" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelete" runat="server" BorderStyle="None" Height="35px" 
                Text="Delete" Width="200px" onclick="btndelete_Click" 
                style="color: #FFFFFF; font-weight: 700; background-color: #003366" 
                BackColor="#990033" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnclear" runat="server" BorderStyle="None" Height="35px" 
                Text="Clear" Width="200px" onclick="btnclear_Click" 
                style="font-weight: 700; color: #FFFFFF; background-color: #003366" />
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
                onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                AllowPaging="True" style="font-size: medium">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Product_id" HeaderText="Id" 
                        SortExpression="Product_id" />
                    <asp:BoundField DataField="Product Category" HeaderText="Category" 
                        SortExpression="Product Category" />
                    <asp:BoundField DataField="Product Name" HeaderText="Name" 
                        SortExpression="Product Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Description" HeaderText="Description" 
                        SortExpression="Description" />
                    <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>


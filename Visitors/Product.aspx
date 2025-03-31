<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/Visitormaster.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Visitors_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 80%;
        }
        .style5
        {
            width: 100%;
        }
        .style6
        {
            width: 100%;
            height: 24px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" cellspacing="0" class="style1" 
        frame="box" style="border: thin solid #808080">
        <tr>
            <td style="font-size: xx-large; text-align: center" class="style5" 
                align="center">
                Product<hr noshade="noshade" size="2" 
                    style="color: #800000; background-color: #800000; font-size: small;" />
            </td>
        </tr>
        <tr>
            <td style="margin: auto; border: thin solid #C0C0C0; text-align: center" 
                align="center" class="style1">
                <asp:DataList ID="DataList1" runat="server" BorderStyle="Double" 
                    BorderWidth="3px" CellPadding="4" 
                    DataKeyField="Product_id" DataSourceID="SqlDataSource1" 
                    GridLines="Horizontal" HorizontalAlign="Center" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" RepeatColumns="4" 
                    style="margin-left: 37px; margin-top: 1px" BackColor="White" 
                    BorderColor="#336666">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" ForeColor="#333333" />
                    <ItemTemplate>
                        <table align="center" cellpadding="2" class="style4">
                            <tr>
                                <td class="style1" rowspan="5" align="center" bgcolor="White">
                                    <asp:Image ID="Image5" runat="server" 
                                        Height="200px" ImageUrl='<%# Eval("Image") %>' Width="200px" />
                                </td>
                                <td align="center" style="font-weight: 700">
                                    Pro Id: <asp:Label ID="Label4" runat="server" Text='<%# Eval("Product_id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="font-weight: 700">
                                    Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("[Product Name]") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="font-weight: 700">
                                    Product Caterory:<asp:Label ID="Label5" runat="server" 
                                        Text='<%# Eval("[Product Category]") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="font-weight: 700">
                                    Price:<asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                    Rs</td>
                            </tr>
                            <tr>
                                <td align="center" style="font-weight: 700">
                                    Description:<asp:Label ID="Label3" runat="server" 
                                        Text='<%# Eval("Description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="style1" style="font-weight: 700" bgcolor="White">
                                    &nbsp;</td>
                                <td align="center" class="style1" style="font-weight: 700" bgcolor="#666666">
                                    <asp:Button ID="Button2" runat="server" BackColor="#3366FF" ForeColor="White" 
                                        Height="35px" Text="Order Now" Width="270px" CssClass="style1" 
                                        BorderStyle="None" onclick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product] WHERE ([Product_id] = @Product_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Product_id" SessionField="pid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/patientmaster.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Patient_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style5
        {
            width: 100%;
        }
        .style4
        {
            width: 100%;
            height: 80%;
        }
        .style6
        {
            height: 84px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" cellspacing="10" class="style1" 
        frame="box" style="border: thin solid #808080" width="80%">
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
                <asp:DataList ID="DataList1" runat="server" BorderStyle="Outset" 
                    BorderWidth="3px" CellPadding="2" 
                    DataKeyField="Product_id" DataSourceID="SqlDataSource1" 
                    GridLines="Horizontal" HorizontalAlign="Center" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" RepeatColumns="4" 
                    style="margin-left: 37px; margin-top: 1px" BackColor="White" 
                    BorderColor="#336666" CellSpacing="10">
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
                                    Pro Id: 
                                    <asp:Label ID="lblpid" runat="server" Text='<%# Eval("Product_id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="font-weight: 700">
                                    Name:<asp:Label ID="lblname" runat="server" 
                                        Text='<%# Eval("[Product Name]") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="font-weight: 700">
                                    Product Caterory:<asp:Label ID="lblcate" runat="server" 
                                        Text='<%# Eval("[Product Category]") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="font-weight: 700">
                                    Price:<asp:Label ID="lblprice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                    Rs</td>
                            </tr>
                            <tr>
                                <td align="center" style="font-weight: 700" class="style6">
                                    Description:<asp:Label ID="lbldescription" runat="server" 
                                        Text='<%# Eval("Description") %>'></asp:Label>
                                    <br />
                                    Select Quantity:<asp:DropDownList ID="drpque" runat="server" 
                                        onselectedindexchanged="drpque_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem>Select Qty</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    Total amt:<asp:Label ID="lbltot" runat="server" Text="lbltot"></asp:Label>
                                    &nbsp;RS</td>
                            </tr>
                            <tr>
                                <td align="center" class="style1" style="font-weight: 700" bgcolor="White">
                                    &nbsp;</td>
                                <td align="center" class="style1" style="font-weight: 700" bgcolor="#666666">
                                    <asp:Button ID="btnaddtocart" runat="server" BackColor="#3366FF" ForeColor="White" 
                                        Height="35px" Text="Add to Cart" Width="270px" CssClass="style1" 
                                        BorderStyle="None" onclick="btnaddtocart_Click" 
                                        CommandArgument='<%# Eval("Product_id") %>' />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
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


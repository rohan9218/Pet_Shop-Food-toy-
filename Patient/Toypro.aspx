<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/patientmaster.master" AutoEventWireup="true" CodeFile="Toypro.aspx.cs" Inherits="Patient_Toypro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            width: 100%;
            height: 80%;
        }
        .style2
        {
            width: 100%;
            height: 50;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style4">
        <tr>
            <td style="text-align: center; font-size: xx-large">
                <table align="center" cellpadding="10" class="style4" cellspacing="5">
                    <tr>
                        <td style="text-align: center">
                            <table align="center" cellpadding="10" class="style4" cellspacing="5">
                                <tr>
                                    <td style="text-align: center; font-size: xx-large" class="style4">
                Toy&#39;s<hr noshade="noshade" size="2" 
                    style="color: #800000; background-color: #800000; font-size: small;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:DataList ID="DataList1" runat="server"  
                   CellPadding="2" CellSpacing="10" 
                    DataKeyField="Product_id" DataSourceID="SqlDataSource2"  
                    Font-Italic="False" Font-Names="Baskerville Old Face" Font-Overline="False" 
                    Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" 
                    ForeColor="Black"  HorizontalAlign="Center" RepeatColumns="4" 
                    style="font-family: 'Microsoft JhengHei UI'" BorderStyle="None">
                                            <ItemTemplate>
                                                <table align="center" cellpadding="2" class="style2" style="border: thin solid #C0C0C0">
                                                    <tr>
                                                        <td>
                                    &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Image ID="Image1" runat="server" BorderStyle="None" Height="150px" 
                                        ImageUrl='<%# Eval("Image") %>' Width="200px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-weight: 700">
                                    Rs.<asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="35px" 
                                        style="color: #FFFFFF; font-weight: 700; background-color: #003366" 
                                        Text="View More" Width="270px" CommandArgument='<%# Eval("Product_id") %>' 
                                        onclick="Button1_Click" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                            </ItemTemplate>
                                        </asp:DataList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product] WHERE ([Product Category] = @Product_Category)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="Toys" Name="Product_Category" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product] WHERE ([Product Category] = @Product_Category)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="Toy" Name="Product_Category" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


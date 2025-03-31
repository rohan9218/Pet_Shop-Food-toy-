<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/Visitormaster.master" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="Visitors_Doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            width: 260;
            height: 100%;
            border-style: solid;
            border-width: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table align="center" cellpadding="6" class="">
            <tr>
                <td style="text-align: center; font-size: xx-large" colspan="2">
                &nbsp;OUR TEAM<hr noshade="noshade" size="2" 
                    style="color: #800000; background-color: #800000; font-size: small;" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:DataList ID="DataList1" runat="server" 
                        BorderColor="Black" BorderWidth="" CellPadding="4" CellSpacing="2" 
                        DataKeyField="Dr_id" DataSourceID="SqlDataSource1" Font-Bold="True" 
                        Font-Italic="False" Font-Names="Baskerville Old Face" Font-Overline="False" 
                        Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" 
                        ForeColor="Black" HorizontalAlign="Center" 
                        RepeatColumns="3" Width="900px" 
                        style="font-family: 'Microsoft JhengHei UI'">
                        <ItemTemplate>
                            <table cellpadding="5" class="style4" cellspacing="0">
                                <tr>
                                    <td style="background-color: #000000">
                                        <asp:Label ID="Label1" runat="server" style="color: #FFFFFF" 
                                            Text='<%# Eval("Name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Image ID="Image1" runat="server" BorderStyle="None" Height="150px" 
                                            ImageUrl='<%# Eval("Image") %>' Width="200px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Contact") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" width="300" runat="server" Text='<%# Eval("Specialization") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Doctor]"></asp:SqlDataSource>
                </td>
                <td style="text-align: center" valign="top">
                    <asp:Image ID="Image5" runat="server" Height="450px" 
                        ImageUrl="~/Images/doc.jpeg" Width="250px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


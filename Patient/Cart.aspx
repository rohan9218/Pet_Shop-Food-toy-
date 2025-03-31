<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/patientmaster.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Patient_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 80%;
            height: 100%;
            font-size: medium;
        }
        .style3
        {}
        .style4
        {
            font-size: x-large;
        }
        .style6
        {
            width: 21px;
        }
        .style7
        {
            height: 41px;
        }
        .style8
        {
            width: 414px;
        }
        .style9
        {
            height: 41px;
            width: 414px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style2">
        <tr>
            <td colspan="2" 
                style="font-weight: 700; font-size: x-large; background-color: #FFFFFF;" 
                bgcolor="#993333">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource2" 
                    GridLines="Vertical" style="font-size: medium" DataKeyNames="pid" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged3">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:BoundField DataField="pid" HeaderText="pid" 
                            SortExpression="pid" />
                        <asp:BoundField DataField="Product Name" HeaderText="Product Name" 
                            SortExpression="Product Name" />
                        <asp:BoundField DataField="Product Category" HeaderText="Product Category" 
                            SortExpression="Product Category" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
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
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <asp:Label ID="lblTot" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
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
                <br />
                <asp:Button ID="btnconfirm" runat="server" BackColor="Maroon" ForeColor="White" 
                    Height="35px" Text="Confirm Order" Width="270px" 
                    onclick="btnconfirm_Click" />
                <asp:Label ID="lbltotal" runat="server" Text="Label" style="font-size: smaller"></asp:Label>
                <asp:Label ID="lblqun" runat="server" Text="Label" style="font-size: smaller"></asp:Label>
                <br />
                <br />
            </td>
            <td colspan="2" 
                style="font-weight: 700; font-size: x-large; background-color: #FFFFFF;" 
                bgcolor="Maroon">
                <table align="center" cellpadding="2" class="style2">
                    <tr>
                        <td>
                            Order Details</td>
                        <td>
                            <asp:Label ID="txtid" runat="server" Text="Lable"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Customer Name</td>
                        <td>
                            <asp:Label ID="txtcname" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Order Date</td>
                        <td>
                            <asp:Label ID="txtdate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Category</td>
                        <td>
                            <asp:Label ID="txtcategory" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Total Amount</td>
                        <td>
                            <asp:Label ID="txtamount" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: 700; font-size: large; color: #FFFFFF;" 
                bgcolor="#993333">
                Customer Details</td>
            <td colspan="2" style="font-weight: 700; font-size: medium; color: #FFFFFF;" 
                bgcolor="Maroon">
                Payment Details&nbsp;
                <asp:TextBox ID="txtpayid" runat="server" BackColor="#990000" 
                    BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td class="style8">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style3" align="char">
                Payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Mode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style6">
                <asp:RadioButton ID="rdcod" runat="server" Height="35px" Text="COD" 
                    Width="270px" oncheckedchanged="RadioButton1_CheckedChanged" 
                    GroupName="a" AutoPostBack="True" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                Address</td>
            <td class="style9">
                <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style7" align="char" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdonline" runat="server" Height="35px" Text="Online" 
                    Width="270px" GroupName="a" AutoPostBack="True" 
                    oncheckedchanged="rdonline_CheckedChanged" />
                </td>
        </tr>
        <tr>
            <td>
                City</td>
            <td class="style8">
                <asp:TextBox ID="txtcity" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style4" colspan="2">
                <strong>&nbsp;</strong></td>
        </tr>
        <tr>
            <td>
                Pin</td>
            <td class="style8">
                <asp:TextBox ID="txtpin" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style3" rowspan="4">
                <asp:Image ID="Image2" runat="server" Height="166px" ImageUrl="~/Images/QR.jpg" 
                    Width="227px" />
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Contact</td>
            <td class="style8">
                <asp:TextBox ID="txtcontact" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2" class="style7">
                <asp:Button ID="btnpay" runat="server" BackColor="Maroon" ForeColor="White" 
                    Height="35px" onclick="btnpay_Click" Text=" Make Payment" Width="270px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Cart_view]" DeleteCommand="delete from Cart where [pid]=@pid"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Cart_view]" DeleteCommand="delete from Cart where [pid]=@pid"></asp:SqlDataSource>
                <br />
&nbsp;&nbsp;&nbsp;
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/patientmaster.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="Patient_MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
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
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        onselecting="SqlDataSource1_Selecting" 
        SelectCommand="SELECT * FROM [Order] WHERE (([CustName] = @CustName) AND ([orderStatus] = @orderStatus))">
        <SelectParameters>
            <asp:SessionParameter Name="CustName" SessionField="user" Type="String" />
            <asp:Parameter DefaultValue="Delivered" Name="orderStatus" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


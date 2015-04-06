<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <% If Not IsPostBack Then%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" SelectCommand="SELECT * FROM [Jbonnett_HW7]"></asp:SqlDataSource>
    Search for a Store:&nbsp;
    <asp:TextBox ID="tb_search" runat="server" AutoPostBack="true"></asp:TextBox>
    <br />
    <%Else%>
    Search for another Store By name: &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_search2" runat="server" AutoPostBack="True"> </asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" CssClass="GridView" AutoGenerateColumns="False" DataKeyNames="GrocerID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="GrocerID" HeaderText="GrocerID" ReadOnly="True" SortExpression="GrocerID" />
            <asp:BoundField DataField="GrocerName" HeaderText="GrocerName" SortExpression="GrocerName" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
        </Columns>
    </asp:GridView>
    <%End If%>
</asp:Content>


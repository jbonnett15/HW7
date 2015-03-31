<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewAll.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />

</head>
    <body>
        <form id="form1" runat="server">
   <div>
       <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Font-Bold="True" Height="16px" ReadOnly="True" style="margin-left: 182px" Width="174px" Font-Size="Medium" CssClass="tan">Local Grocery Stores
</asp:TextBox >
        <br />

        <asp:TextBox ID="TextBox2" runat="server"  BorderStyle="None" Font-Bold="False" Height="16px" ReadOnly="True" Width="200px" style="margin-left: 185px">Using 5 Ingredients or Less!</asp:TextBox>
        <br />

        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Small" ForeColor="Black" style="margin-left: 150px" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/NewRecipe.aspx">New Grocery Store</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>
   </div>
        <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jbonnett_HW7]"></asp:SqlDataSource>
        <br />
&nbsp;
        <div style="margin-left: 120px; width: 295px;">
            <asp:GridView ID="GridView1" runat="server" CssClass="GridView" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="1000" Width="281px" Height="135px">
                <Columns>
                    <asp:BoundField DataField="GrocerID" HeaderText="GrocerID" SortExpression="GrocerID" />
                    <asp:BoundField DataField="GrocerName" HeaderText="GrocerName" SortExpression="GrocerName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                    <asp:HyperLinkField HeaderText="Edit" NavigateUrl="detailsview.aspx" Text="Select" />
                </Columns>
            </asp:GridView>
        </div>
        <br />
        <span class="auto-style1"> © 2015 MSCI:3300 Software Design &amp; Development</span></form>
</body>
</html>

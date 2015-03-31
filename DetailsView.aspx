<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
  
        <br />
    
    </div>
        <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" 
             SelectCommand="SELECT * FROM [Jbonnett_HW7] WHERE ([GrocerID] = @GrocerID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="GrocerID" QueryStringField="GrocerID" />
            </SelectParameters>
           
            
        </asp:SqlDataSource>

        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="314px" DataKeyNames="GrocerID" style="margin-left: 122px">
            <Fields>
                <asp:BoundField DataField="GrocerID" HeaderText="GrocerID" SortExpression="GrocerID" ReadOnly="True" />
                <asp:BoundField DataField="GrocerName" HeaderText="GrocerName" SortExpression="GrocerName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>

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
        <div></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" DeleteCommand="DELETE FROM [Jbonnett_HW7] WHERE [GrocerID] = @original_GrocerID AND [GrocerName] = @original_GrocerName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [Zip] = @original_Zip" InsertCommand="INSERT INTO [Jbonnett_HW7] ([GrocerID], [GrocerName], [Address], [City], [State], [Zip]) VALUES (@GrocerID, @GrocerName, @Address, @City, @State, @Zip)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jbonnett_HW7]" UpdateCommand="UPDATE [Jbonnett_HW7] SET [GrocerName] = @GrocerName, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [GrocerID] = @original_GrocerID AND [GrocerName] = @original_GrocerName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [Zip] = @original_Zip">
            <DeleteParameters>
                <asp:Parameter Name="original_GrocerID" Type="Int32" />
                <asp:Parameter Name="original_GrocerName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_Zip" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GrocerID" Type="Int32" />
                <asp:Parameter Name="GrocerName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GrocerName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="Int32" />
                <asp:Parameter Name="original_GrocerID" Type="Int32" />
                <asp:Parameter Name="original_GrocerName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_Zip" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="GrocerID" HeaderText="GrocerID" SortExpression="GrocerID" />
                <asp:BoundField DataField="GrocerName" HeaderText="GrocerName" SortExpression="GrocerName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>

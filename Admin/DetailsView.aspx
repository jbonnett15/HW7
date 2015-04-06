<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="Admin_DetailsView2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <body>
         


        <div></div>
        <asp:Label ID="lbl_deletedstore" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" DeleteCommand="DELETE FROM [Jbonnett_HW7] WHERE [GrocerID] = @original_GrocerID AND [GrocerName] = @original_GrocerName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [Zip] = @original_Zip" InsertCommand="INSERT INTO [Jbonnett_HW7] ([GrocerID], [GrocerName], [Address], [City], [State], [Zip]) VALUES (@GrocerID, @GrocerName, @Address, @City, @State, @Zip)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jbonnett_HW7] WHERE ([GrocerID] = @GrocerID)" UpdateCommand="UPDATE [Jbonnett_HW7] SET [GrocerName] = @GrocerName, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [GrocerID] = @original_GrocerID AND [GrocerName] = @original_GrocerName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [Zip] = @original_Zip">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="GrocerID" QueryStringField="GrocerID" />
            </SelectParameters>
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

        
        &nbsp;&nbsp;&nbsp;
        <asp:DetailsView ID="DetailsView1" runat="server" CssClass="GridView" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="256px" style="margin-left: 191px" DataKeyNames="GrocerID">
            <Fields>
                <asp:BoundField DataField="GrocerID" HeaderText="GrocerID" SortExpression="GrocerID" ReadOnly="True" />
                <asp:BoundField DataField="GrocerName" HeaderText="GrocerName" SortExpression="GrocerName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                
               <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
   
</body>

&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>


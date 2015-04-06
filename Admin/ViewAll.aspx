<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewAll.aspx.vb" Inherits="Admin_ViewAll2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .GridView {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jbonnett_HW7]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Jbonnett_HW7] WHERE [GrocerID] = @original_GrocerID AND [GrocerName] = @original_GrocerName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [Zip] = @original_Zip" InsertCommand="INSERT INTO [Jbonnett_HW7] ([GrocerID], [GrocerName], [Address], [City], [State], [Zip]) VALUES (@GrocerID, @GrocerName, @Address, @City, @State, @Zip)" UpdateCommand="UPDATE [Jbonnett_HW7] SET [GrocerName] = @GrocerName, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [GrocerID] = @original_GrocerID AND [GrocerName] = @original_GrocerName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [Zip] = @original_Zip">
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
        <br />
&nbsp;
        <div style="margin-left: 100px; width: 490px;">
            <asp:GridView ID="GridView1" runat="server" CssClass="GridView" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="1000" Width="488px" Height="135px" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="GrocerID" HeaderText="GrocerID" SortExpression="GrocerID" />
                    <asp:BoundField DataField="GrocerName" HeaderText="GrocerName" SortExpression="GrocerName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:HyperLinkField HeaderText="Edit" Text="Select" DataNavigateUrlFields="GrocerID" DataNavigateUrlFormatString="DetailsView.aspx?GrocerID={0}" />
                </Columns>
            </asp:GridView>
        </div>
        <br />
</asp:Content>


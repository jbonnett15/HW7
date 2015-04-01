<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="DetailsView2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" 
             SelectCommand="SELECT * FROM [Jbonnett_HW7] WHERE ([GrocerID] = @GrocerID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="GrocerID" QueryStringField="GrocerID" />
            </SelectParameters>
           
            
        </asp:SqlDataSource>

        
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
   </div> 
</asp:Content>


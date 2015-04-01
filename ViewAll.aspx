<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewAll.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="DB">
        <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jbonnett_HW7]"></asp:SqlDataSource>
        <div style="margin-left: 120px; width: 295px;">
            <asp:GridView ID="GridView1" runat="server" CssClass="GridView" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="1000" Width="308px" Height="135px">
                <Columns>
                    <asp:BoundField DataField="GrocerName" HeaderText="GrocerName" SortExpression="GrocerName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:HyperLinkField Text="Select" DataNavigateUrlFields="GrocerID" DataNavigateUrlFormatString="DetailsView.aspx?GrocerID={0}" />
                </Columns>
            </asp:GridView>
            <br />
        </div>

            </div>
</asp:Content>


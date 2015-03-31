<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddNew.aspx.vb" Inherits="AddNew" %>

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
   </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" SelectCommand="SELECT * FROM [Jbonnett_HW7]"></asp:SqlDataSource>
       
        
         <asp:FormView ID="FormView1" runat="server" DataKeyNames="GrocerID" DataSourceID="SqlDataSource1">
            <InsertItemTemplate>
                <table>
                    <tr>
                       <td style="text-align:right;" class="auto-style2">
                            GrocerID  :
                        </td>
                        <td style="text-align:left" class="auto-style2">
                            <asp:TextBox ID="tb_GrocerID" runat="server" Text='<%# Bind("GrocerID") %>'/>
                        </td>
                        <td class="validationError">
                            <asp:RequiredFieldValidator ID="rfv_GrocerID" runat="server" ErrorMessage="Enter a GrocerID" CssClass="validationError" ControlToValidate="tb_GrocerID"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      <tr>                       
                       <td style="text-align:right;">
                            Grocery Name
                       </td> 
                        <td style="text-align:left">
                            <asp:TextBox ID="tb_GrocerName" runat="server" Text='<%# Bind("GrocerName") %>' />
                        </td>
                         <td>
                            <asp:RequiredFieldValidator ID="rfv_GrocerName" runat="server" ErrorMessage="Enter a Grocery Name" CssClass="validationError" ControlToValidate="tb_GrocerName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                           
                    <tr>
                         <td style="text-align:right;">
                        Address  :
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="tb_Address" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                         <td>
                            <asp:RequiredFieldValidator ID="rfv_address" runat="server" ErrorMessage="Enter an Address" CssClass="validationError" ControlToValidate="tb_Address"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                       <td style="text-align:right;">
                             City :
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="tb_City" runat="server" Text='<%# Bind("City") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_City" runat="server" ErrorMessage="Enter a City" CssClass="validationError" ControlToValidate="tb_City"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                       <td style="text-align:right;">
                              State :
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="tb_State" runat="server" Text='<%# Bind("State") %>' />
                        </td>
                         <td>
                             <asp:RequiredFieldValidator ID="rfv_State" runat="server" ErrorMessage="Please enter a State"></asp:RequiredFieldValidator>
                         </td>
                    </tr>
                     <tr>
                       <td style="text-align:right;">
                             Zip  : 
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="tb_Zip" runat="server" Text='<%# Bind("Zip") %>' />
                        </td>
                         <td>
                             <asp:RequiredFieldValidator ID="rfv_Zip" runat="server" ErrorMessage="Please Enter a Zip"></asp:RequiredFieldValidator>
                         </td>
                    </tr>                                                       
                     <tr>
                       <td style="text-align:right;">
                            <asp:Button ID="btn_Insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        </td>
                        <td style="text-align:left">
                             <asp:Button ID="btn_cancelInsert" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </InsertItemTemplate>
        </asp:FormView>          
    </form>
</body>
</html>

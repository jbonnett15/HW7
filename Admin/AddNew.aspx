<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNew.aspx.vb" Inherits="Admin_AddNew2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" SelectCommand="SELECT * FROM [Jbonnett_HW7]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Jbonnett_HW7] WHERE [GrocerID] = @original_GrocerID AND [GrocerName] = @original_GrocerName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [Zip] = @original_Zip" InsertCommand="INSERT INTO [Jbonnett_HW7] ([GrocerID], [GrocerName], [Address], [City], [State], [Zip]) VALUES (@GrocerID, @GrocerName, @Address, @City, @State, @Zip)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Jbonnett_HW7] SET [GrocerName] = @GrocerName, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [GrocerID] = @original_GrocerID AND [GrocerName] = @original_GrocerName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [Zip] = @original_Zip">
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
       
        
         <asp:FormView ID="FormView1" runat="server" DataKeyNames="GrocerID" DataSourceID="SqlDataSource1" style="margin-right: 36px" DefaultMode="Insert">
             
             
             
             
                 <InsertItemTemplate>
                <table>
                    <tr>
                       <td style="text-align:right;" class="auto-style5">
                            GrocerID  :
                        </td>
                        <td style="text-align:left" class="auto-style5">
                            <asp:TextBox ID="tb_GrocerID" runat="server" Text='<%# Bind("GrocerID") %>'/>
                        </td>
                        <td class="auto-style4">
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
                         <td class="auto-style3">
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
                         <td class="auto-style3">
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
                        <td class="auto-style3">
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
                         <td class="auto-style3">
                             <asp:RequiredFieldValidator ID="rfv_State" runat="server" ErrorMessage="Please enter a State" CssClass="validationError" ControlToValidate="tb_State"></asp:RequiredFieldValidator>
                         </td>
                    </tr>
                     <tr>
                       <td style="text-align:right;">
                             Zip  : 
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="tb_Zip" runat="server" Text='<%# Bind("Zip") %>' />
                        </td>
                         <td class="auto-style3">
                             <asp:RequiredFieldValidator ID="rfv_Zip" runat="server" ErrorMessage="Please Enter a Zip"CssClass="validationError" ControlToValidate="tb_Zip"> ></asp:RequiredFieldValidator>
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
</asp:Content>


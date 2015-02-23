<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddInventory.aspx.vb" Inherits="GKM_Realty.AddInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:tstConnectionString %>" 
        DeleteCommand="DELETE FROM [Houses] WHERE [HouseID] = @original_HouseID AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([listingPrice] = @original_listingPrice) OR ([listingPrice] IS NULL AND @original_listingPrice IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
        InsertCommand="INSERT INTO [Houses] ([address], [listingPrice], [description], [status]) VALUES (@address, @listingPrice, @description, @status)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [HouseID], [address], [listingPrice], [description], [status] FROM [Houses]" 
        
        
        
        UpdateCommand="UPDATE [Houses] SET [address] = @address, [listingPrice] = @listingPrice, [description] = @description, [status] = @status WHERE [HouseID] = @original_HouseID AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([listingPrice] = @original_listingPrice) OR ([listingPrice] IS NULL AND @original_listingPrice IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_HouseID" Type="Int32" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_listingPrice" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="listingPrice" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="listingPrice" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="original_HouseID" Type="Int32" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_listingPrice" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="HouseID" 
        DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="HouseIDLabel" runat="server" Text='<%# Eval("HouseID") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" 
                        Text='<%# Eval("address") %>' />
                </td>
                <td>
                    <asp:Label ID="listingPriceLabel" runat="server" 
                        Text='<%# Eval("listingPrice", "{0:c}") %>'/>
                </td>
                <td>
                    <asp:Label ID="descriptionLabel" runat="server" 
                        Text='<%# Eval("description") %>' />
                </td>
                <td>
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="HouseIDLabel1" runat="server" Text='<%# Eval("HouseID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="listingPriceTextBox" runat="server" 
                        Text='<%# Bind("listingPrice") %>' />
                </td>
                <td>
                    <asp:TextBox ID="descriptionTextBox" runat="server" 
                        Text='<%# Bind("description") %>' />
                </td>
                <td>
                    <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    errorMessage="Empty Address" ControlToValidate="addressTextBox"></asp:RequiredFieldValidator> 
                </td>
                <td>
                    <asp:TextBox ID="listingPriceTextBox" runat="server" 
                        Text='<%# Bind("listingPrice") %>'/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Empty Price" ControlToValidate="listingPriceTextBox"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Invalid Price" ControlToValidate="listingPriceTextBox" operator="DataTypeCheck" type="Currency"></asp:CompareValidator>
                </td>
                <td>
                    <asp:TextBox ID="descriptionTextBox" runat="server" 
                        Text='<%# Bind("description") %>' />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    errorMessage="Empty Description" ControlToValidate="descriptionTextBox"></asp:RequiredFieldValidator> 
                </td>
                <td>
                    <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    errorMessage="Empty Status" ControlToValidate="statusTextBox"></asp:RequiredFieldValidator> 
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="HouseIDLabel" runat="server" Text='<%# Eval("HouseID") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" 
                        Text='<%# Eval("address") %>' />
                </td>
                <td>
                    <asp:Label ID="listingPriceLabel" runat="server" 
                        Text='<%# Eval("listingPrice", "{0:c}") %>' />
                </td>
                <td>
                    <asp:Label ID="descriptionLabel" runat="server" 
                        Text='<%# Eval("description") %>' />
                </td>
                <td>
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" style="border: medium solid #000000">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server">
                            <tr runat="server" style="color: #000000; border: medium solid #000000">
                                <th runat="server">
                                    </th>
                                <th runat="server" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; color: #000000">
                                    Listing Number</th>
                                <th runat="server" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                    Address</th>
                                <th runat="server" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                    Price</th>
                                <th runat="server" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                    Description</th>
                                <th runat="server" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                    Status</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="HouseIDLabel" runat="server" Text='<%# Eval("HouseID") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" 
                        Text='<%# Eval("address") %>' />
                </td>
                <td>
                    <asp:Label ID="listingPriceLabel" runat="server" 
                        Text='<%# Eval("listingPrice") %>' />
                </td>
                <td>
                    <asp:Label ID="descriptionLabel" runat="server" 
                        Text='<%# Eval("description") %>' />
                </td>
                <td>
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
</asp:Content>

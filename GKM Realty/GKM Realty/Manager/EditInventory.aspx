<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="EditInventory.aspx.vb" Inherits="GKM_Realty.EditInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" align="center" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="HouseID" 
    DataSourceID="SqlDataSource1" CellPadding="3" ForeColor="Black" 
        GridLines="Vertical" AllowPaging="True" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="HouseID" HeaderText="Listing Number" 
                SortExpression="HouseID" InsertVisible="False" ReadOnly="True" />
            <asp:TemplateField HeaderText="Address" SortExpression="address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Empty Address" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" SortExpression="listingPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("listingPrice") %>'></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Invalid Price" ControlToValidate="TextBox1" operator="DataTypeCheck" type="Currency"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Empty Price" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" 
                        Text='<%# Bind("listingPrice", "{0:c}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" SortExpression="description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Empty Description" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="status">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Empty Status" ControlToValidate="TextBox4" Text='<%# Eval("status") %>'></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:tstConnectionString %>" 
    DeleteCommand="DELETE FROM [Houses] WHERE [HouseID] = @original_HouseID AND [address] = @original_address AND [listingPrice] = @original_listingPrice AND [description] = @original_description AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
    InsertCommand="INSERT INTO [Houses] ([address], [listingPrice], [description], [status]) VALUES (@address, @listingPrice, @description, @status)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT [HouseID], [address], [listingPrice], [description], [status] FROM [Houses]" 
    
        
        UpdateCommand="UPDATE [Houses] SET [address] = @address, [listingPrice] = @listingPrice, [description] = @description, [status] = @status WHERE [HouseID] = @original_HouseID AND [address] = @original_address AND [listingPrice] = @original_listingPrice AND [description] = @original_description AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_HouseID" Type="Int32" />
        <asp:Parameter Name="original_address" Type="String" />
        <asp:Parameter Name="original_listingPrice" Type="Decimal" />
        <asp:Parameter Name="original_description" Type="String" />
        <asp:Parameter Name="original_status" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="listingPrice" Type="Decimal" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="status" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="listingPrice" Type="Decimal" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="status" Type="String" />
        <asp:Parameter Name="original_HouseID" Type="Int32" />
        <asp:Parameter Name="original_address" Type="String" />
        <asp:Parameter Name="original_listingPrice" Type="Decimal" />
        <asp:Parameter Name="original_description" Type="String" />
        <asp:Parameter Name="original_status" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

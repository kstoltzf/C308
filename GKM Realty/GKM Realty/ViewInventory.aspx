<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ViewInventory.aspx.vb" Inherits="GKM_Realty.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" align="center" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="3" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        AllowPaging="True" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" >
            </asp:BoundField>
            <asp:BoundField DataField="listingPrice" HeaderText="Price" 
                SortExpression="listingPrice" DataFormatString="{0:c}" >
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description" />
            <asp:BoundField DataField="status" HeaderText="Status" 
                SortExpression="status" />
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
        ConnectionString="<%$ ConnectionStrings:tstConnectionString %>" 
        SelectCommand="SELECT [address], [listingPrice], [description], [housePic], [status] FROM [Houses]">
    </asp:SqlDataSource>
   </asp:Content>

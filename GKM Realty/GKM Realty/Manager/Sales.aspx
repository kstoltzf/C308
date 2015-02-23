<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Sales.aspx.vb" Inherits="GKM_Realty.Sales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" align="center" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
    AllowSorting="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="employeeName" HeaderText="Name" 
                SortExpression="employeeName" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="housesSold" HeaderText="Houses Sold" 
                SortExpression="housesSold" />
            <asp:BoundField DataField="openedCommissions" HeaderText="Opened Commissions" 
                SortExpression="openedCommissions" />
            <asp:BoundField DataField="closedCommissions" HeaderText="Closed Commissions" 
                SortExpression="closedCommissions" />
            <asp:BoundField DataField="totalCommissions" HeaderText="Total Commissions" 
                SortExpression="totalCommissions" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
        SelectCommand="SELECT [employeeName], [housesSold], [openedCommissions], [closedCommissions], [totalCommissions] FROM [Sales]">
    </asp:SqlDataSource>
    </asp:Content>

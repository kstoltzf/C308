<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Employees.aspx.vb" Inherits="GKM_Realty.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        HorizontalAlign="Center" CellPadding="3" ForeColor="Black" 
        GridLines="Vertical" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="employeeName" HeaderText="Name" 
                SortExpression="employeeName" />
            <asp:BoundField DataField="jobTitle" HeaderText="Position" 
                SortExpression="jobTitle" />
            <asp:BoundField DataField="experience" HeaderText="Experience" 
                SortExpression="experience" />
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
        SelectCommand="SELECT [employeeName], [jobTitle], [experience], [employeePic] FROM [Employees]">
    </asp:SqlDataSource>
</asp:Content>

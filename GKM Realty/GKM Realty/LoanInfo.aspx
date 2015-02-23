<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="LoanInfo.aspx.vb" Inherits="GKM_Realty.LoanInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p align="center">
        <strong style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #000000">Time:&nbsp;</strong>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" BorderColor="Black" 
            BorderStyle="Solid"></asp:TextBox>
    &nbsp;<strong>Years</strong></p>
    <p>
        <strong style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: x-large;">
        Interest Rate:&nbsp;&nbsp;&nbsp; </strong>
        <asp:TextBox ID="TextBox2" runat="server" Height="22px" BorderStyle="Solid"></asp:TextBox>
    &nbsp;<strong>%</strong></p>
    <p>
        <strong style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #000000">
        Principle:&nbsp;&nbsp;&nbsp;&nbsp;$ </strong>
        <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="22px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Calculate" BorderColor="Black" 
            BorderStyle="Solid" Font-Bold="True" Font-Size="Medium"/>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Clear" BorderColor="Black" 
            BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" />
        <br />
        <br />
        <strong style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #000000">
        Monthly Payment: </strong>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="22px"></asp:TextBox>
    </p>
</asp:Content>

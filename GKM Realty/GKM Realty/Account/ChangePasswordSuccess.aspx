<%@ Page Title="Change Password" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="ChangePasswordSuccess.aspx.vb" Inherits="GKM_Realty.ChangePasswordSuccess" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style2
        {
            color: #800000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center">
        <span class="style1"><strong>Change Password</strong></span>
    </h2>
    <p class="style2">
        <strong>Your password has been changed successfully.
    </strong>
    </p>
</asp:Content>

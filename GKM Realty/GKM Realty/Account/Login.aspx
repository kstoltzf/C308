<%@ Page Title="Log In" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Login.aspx.vb" Inherits="GKM_Realty.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            color: #006666;
            font-size: xx-large;
        }
        .style2
        {
            color: #000000;
            font-size: x-large;
        }
        .style3
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center" class="style1">
        Login<strong> </strong>
    </h2>
    <p align="center" class="style2" 
        
        style="border-style: solid; border-width: medium; background-color: #808080; position: inherit; width: inherit; height: inherit;">
        <strong>Please enter your username and password.
    </strong>
    </p>
    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" 
        RenderOuterTable="false" 
        style="font-family: Arial, Helvetica, sans-serif; font-weight: 700">
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
            <div class="accountInfo">
                <fieldset class="login" 
                    style="border: medium solid #000000; background-color: #3a4f63">
                    <legend class="style3">
                        <strong style="padding: inherit; margin: inherit; font-size: large; background-color: #666666;">Account Information</strong></legend>
                    <p style="border-width: medium; border-style: none">
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry" 
                            BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" 
                            TextMode="Password" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                </fieldset>
                <p class="submitButton" align="center">
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                        ValidationGroup="LoginUserValidationGroup" BackColor="Silver" 
                        BorderColor="Black" BorderStyle="Solid"/>
                </p>
            </div>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>
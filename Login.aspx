<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Go ahead and login!</h1>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login ID="Login1" runat="server" CreateUserText="Sign Up for a New Account." CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/About/About.aspx">
            </asp:Login>
        </AnonymousTemplate>
        <LoggedInTemplate>
            You are already logged in.
        </LoggedInTemplate>
    </asp:LoginView>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
</asp:Content>


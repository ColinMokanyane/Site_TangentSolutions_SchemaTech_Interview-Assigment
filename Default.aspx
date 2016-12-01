<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: small;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
     <section id="MainContent">
        <h1><strong>Hi visitor! Welcome to the site! </strong></h1>
        <p class="auto-style2"> 
            Hi there, I am happy that you are visiting my site, you are very much going to enjoy the experience.</p>
        <p class="auto-style2">
            <strong>Feel free to look around, you are more than welcome to do so.</strong></p>
        <p>
            <span class="auto-style2">You can </span> <a href="Login.aspx"><span class="auto-style2">log in </span> </a><span class="auto-style2">here.</span></p>
            </section>
</asp:Content>


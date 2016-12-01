<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        height: 26px;
    }
    .auto-style4 {
        width: 575px;
        height: 26px;
    }
    .auto-style5 {
    }
    .auto-style6 {
        height: 26px;
        width: 199px;
        text-align: left;
    }
    .auto-style9 {
        width: 199px;
    }
    .auto-style10 {
        width: 575px;
    }
    .auto-style11 {
        text-align: left;
        width: 199px;
    }
</style>

<script>
    function validatePhoneNumbers(source, args)
    {
        var phoneHome = document.getElementById('<%=txtPhoneHome.ClientID%>');
        var phoneBusiness = document.getElementById('<%=txtPhoneBusiness.ClientID%>');
        if (phoneHome.value != '' || phoneBusiness.value != '')
        {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3">
            <h1>Get in touch!<br /></h1>
            Use the form below to get in touch. Enter your name, email address, and your home and business contact details, and feel free to leave any comments.
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Name:</td>
        <td class="auto-style10">
            <asp:TextBox ID="txtName" runat="server" style="margin-left: 0px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtName" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Email Address:</td>
        <td class="auto-style10">
            <asp:TextBox ID="txtEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your email address" ControlToValidate="txtEmailAddress" CssClass="ErrorMessage" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Confirm Email:</td>
        <td class="auto-style10">
            <asp:TextBox ID="txtConEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm your email address" ControlToValidate="txtConEmailAddress" CssClass="ErrorMessage" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtEmailAddress" ControlToValidate="txtConEmailAddress" CssClass="ErrorMessage" Display="Dynamic">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Phone Number - Home:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtPhoneHome" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Phone Number - Business:</td>
        <td class="auto-style10">
            <asp:TextBox ID="txtPhoneBusiness" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">Comments:</td>
        <td class="auto-style10">
            <asp:TextBox ID="txtCommets" runat="server" Height="98px" TextMode="MultiLine" Width="169px" style="text-align: center"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Write a comment" ControlToValidate="txtCommets" CssClass="ErrorMessage" Display="Dynamic">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">
            <asp:Button ID="btnSendButton" runat="server" Text="Send" OnClick="btnSendButton_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" ShowMessageBox="True" ShowSummary="False" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
        <asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" />
        </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server">
    <ProgressTemplate>
        <div class="PleaseWait">
            Please wait...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
    
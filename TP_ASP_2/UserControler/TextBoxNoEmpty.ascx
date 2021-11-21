<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TextBoxNoEmpty.ascx.cs" Inherits="UserControler_TextBoxNoEmpty" %>
<div>
    <asp:Label ID="Label" AssociatedControlID="input" runat="server" Text="Title"></asp:Label>
    <asp:TextBox ID="Input" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredValidator" ControlToValidate="input" runat="server" ErrorMessage="No puede estar vacio"></asp:RequiredFieldValidator>
</div>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TextBoxDni.ascx.cs" Inherits="UserControler_TextBoxDni" %>
<div>
    <asp:Label ID="Label" runat="server" Text="Dni"></asp:Label>
    <asp:TextBox ID="Input" runat="server"></asp:TextBox>
    <asp:CustomValidator ID="CustomValidate" ErrorMessage="Dni es incorrecto" ControlToValidate="Input" ValidateEmptyText="True" OnServerValidate="ValidarTextBox" runat="server"></asp:CustomValidator>
</div>
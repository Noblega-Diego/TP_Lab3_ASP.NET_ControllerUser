<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TextBoxMayorEdad.ascx.cs" Inherits="UserControler_TextBoxMayorEdad" %>
<div>
    <asp:Label ID="Label" runat="server" Text="Title"></asp:Label>
    <asp:TextBox ID="Input" runat="server"></asp:TextBox>
    <asp:CustomValidator ID="CustomValidate" ErrorMessage="No es mayor de edad" ControlToValidate="Input" ValidateEmptyText="True" OnServerValidate="ValidarTextBox" runat="server"></asp:CustomValidator>
</div>
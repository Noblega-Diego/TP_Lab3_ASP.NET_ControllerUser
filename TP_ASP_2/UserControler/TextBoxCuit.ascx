<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TextBoxCuit.ascx.cs" Inherits="UserControler_TextBoxCuit" %>
<div>
    <asp:Label ID="Label" runat="server" Text="Title"></asp:Label>
    <asp:TextBox ID="Input" runat="server"></asp:TextBox>
    <asp:CustomValidator ID="CustomValidate" ErrorMessage="Cuil es incorrecto" ControlToValidate="Input" ValidateEmptyText="True" 
        OnServerValidate="ValidarTextBox" runat="server"></asp:CustomValidator>
</div>
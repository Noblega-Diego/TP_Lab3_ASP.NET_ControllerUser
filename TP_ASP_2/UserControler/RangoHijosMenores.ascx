<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RangoHijosMenores.ascx.cs" Inherits="UserControler_RangoHijosMenores" %>
<div>
    <asp:Label ID="Label" runat="server" Text="Title"></asp:Label>
    <asp:TextBox ID="Input" runat="server"></asp:TextBox>
    <asp:CustomValidator ID="CustomValidate" ErrorMessage="El numero de hijos ingresado no es valido" ControlToValidate="Input" ValidateEmptyText="True" OnServerValidate="ValidarTextBox" runat="server"></asp:CustomValidator>
</div>
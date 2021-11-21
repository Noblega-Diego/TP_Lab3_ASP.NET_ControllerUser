<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RadioButtonSex.ascx.cs" Inherits="UserControler_RadioButtonSex" %>
<div>
    <asp:Label ID="Label" Text="Sexo" runat="server" />
    <div>
        <asp:RadioButtonList ID="RbSexo" runat="server">
            <asp:ListItem Text="Hombre" Value="hombre"/>
            <asp:ListItem Text="Mujer" Value="mujer"/>
        </asp:RadioButtonList>
    </div>
</div>
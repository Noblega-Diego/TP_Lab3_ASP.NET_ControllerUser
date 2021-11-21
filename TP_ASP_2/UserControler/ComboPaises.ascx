<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ComboPaises.ascx.cs" Inherits="UserControler_ComboPaises" %>
<div>
    <asp:Label ID="Label" Text="Pais" runat="server" />
    <div>
        <asp:DropDownList ID="SelectedPais" runat="server">
            <asp:ListItem Text="Argentina" />
            <asp:ListItem Text="brasil" />
            <asp:ListItem Text="Chile" />
            <asp:ListItem Text="Peru" />
            <asp:ListItem Text="Peru" />
            <asp:ListItem Text="Paraguay" />
        </asp:DropDownList>
    </div>
</div>
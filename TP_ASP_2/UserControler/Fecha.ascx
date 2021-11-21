<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Fecha.ascx.cs" Inherits="UserControler_Fecha" %>

<div>
    <asp:Label Text="Fecha" ID="Label" runat="server" />
    <div>
        <asp:TextBox ID="Dia" runat="server" type="number" Width="30"/>  
        <asp:CustomValidator ID="CstValDia" runat="server" ControlToValidate="Dia" ErrorMessage="CustomValidator" Visible="false" ValidationGroup="conjuntoValidacion" OnServerValidate="CstValDia_ServerValidate"></asp:CustomValidator>
        <asp:DropDownList ID="Mes" runat="server">
            <asp:ListItem Text="Enero" Value="1" />
            <asp:ListItem Text="Febrero" Value="2" />
            <asp:ListItem Text="Marzo" Value="3" />
            <asp:ListItem Text="Abril" Value="4" />
            <asp:ListItem Text="Mayo" Value="5" />
            <asp:ListItem Text="Junio" Value="6" />
            <asp:ListItem Text="Julio" Value="7" />
            <asp:ListItem Text="Agosto" Value="8" />
            <asp:ListItem Text="Septiembre" Value="9" />
            <asp:ListItem Text="Octubre" Value="10" />
            <asp:ListItem Text="Noviembre" Value="11" />
            <asp:ListItem Text="Diciembre" Value="12" />
        </asp:DropDownList>
        <asp:TextBox ID="Anio" runat="server" type="number" Width="60"/>  
        <asp:CustomValidator ID="CstValAnio" runat="server" ControlToValidate="Anio" ErrorMessage="CustomValidator" Visible="false" ValidationGroup="conjuntoValidacion" OnServerValidate="CstValAnio_ServerValidate"></asp:CustomValidator>
    </div>
    <asp:ValidationSummary ID="conjuntoValidacion" runat="server" ValidationGroup="conjuntoValidacion"/>
</div>
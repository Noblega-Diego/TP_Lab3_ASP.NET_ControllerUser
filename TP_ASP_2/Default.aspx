<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="UserControler/TextBoxNoEmpty.ascx" tagname="TextBoxNoEmpty" tagprefix="input" %>
<%@ Register src="~/UserControler/TextBoxCuit.ascx" tagname="TextBoxCuit" tagprefix="input" %>
<%@ Register src="~/UserControler/TextBoxMayorEdad.ascx" tagname="TextBoxMayorEdad" tagprefix="input" %>
<%@ Register Src="~/UserControler/RadioButtonSex.ascx" TagPrefix="input" TagName="RadioButtonSex" %>
<%@ Register src="UserControler/RangoHijosMenores.ascx" tagname="RangoHijosMenores" tagprefix="input" %>
<%@ Register Src="~/UserControler/ComboPaises.ascx" TagPrefix="input" TagName="ComboPaises" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
</head>
<body>
    <form id="form1" runat="server">
        <input:TextBoxNoEmpty Title="Apellido" ID="TextBoxNoEmpty2" runat="server" />
        <input:TextBoxNoEmpty Title="Nombre" ID="TextBoxNoEmpty1" runat="server" />
        <input:TextBoxCuit  Title="N° de CUIT" runat="server" />
        <input:TextBoxMayorEdad  Title="Edad del Solicitante" runat="server" />
        <input:ComboPaises runat="server" ID="ComboPaises" />
        <input:RadioButtonSex Title="Sexo" runat="server" ID="RadioButtonSex" />
        <input:RangoHijosMenores ID="RangoHijosMenores1" Title="N° de Hijos Menores de Edad" runat="server" />
        <asp:Button Text="Enviar" runat="server"></asp:Button>
    </form>
</body>
</html>

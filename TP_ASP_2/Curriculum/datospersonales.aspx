<%@ Page Language="C#" AutoEventWireup="true" CodeFile="datospersonales.aspx.cs" Inherits="Curriculum_datospersonales" %>

<%@ Register Src="~/UserControler/TextBoxNoEmpty.ascx" TagPrefix="input" TagName="TextBoxNoEmpty" %>
<%@ Register Src="~/UserControler/ComboPaises.ascx" TagPrefix="input" TagName="ComboPaises" %>
<%@ Register Src="~/UserControler/RadioButtonSex.ascx" TagPrefix="input" TagName="RadioButtonSex" %>
<%@ Register Src="~/UserControler/Fecha.ascx" TagPrefix="input" TagName="Fecha" %>
<%@ Register Src="~/UserControler/TextBoxDni.ascx" TagPrefix="input" TagName="TextBoxDni" %>






<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Datos personales</h1>
    
    <form id="form1" runat="server">
        <input:TextBoxNoEmpty Title="Nombre" runat="server" ID="Nombre" />
        <input:TextBoxNoEmpty Title="Apellido" runat="server" ID="Apellido" />
        <input:TextBoxDni runat="server" ID="Dni" />
        <input:TextBoxNoEmpty Title="Domicilio" runat="server" ID="Domicilio" />
        <input:ComboPaises runat="server" ID="ComboPaises" />
        <input:RadioButtonSex runat="server" ID="RadioButtonSex" />
        <input:Fecha runat="server" ID="Fecha" />
        <asp:Button ID="BtSiguiente" runat="server" Text="Siguiente" OnClick="BtSiguiente_Click"/>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="estudios.aspx.cs" Inherits="Curriculum_estudios" %>

<%@ Register Src="~/Curriculum/controles/campoEducacional.ascx" TagPrefix="uc1" TagName="campoEducacional" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="CamposEstudio" runat="server"></asp:Panel>
        <asp:Button Text="Agregar Estudio" runat="server" OnClick="Agregar_Click" />
        <asp:Button Text="Continuar" runat="server" OnClick="Continuar_Click" />
    </form>
</body>
</html>

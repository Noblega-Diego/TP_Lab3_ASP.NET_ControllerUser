<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trabajos.aspx.cs" Inherits="Curriculum_trabajos" %>

<%@ Register Src="~/Curriculum/controles/CampoTrabajo.ascx" TagPrefix="uc1" TagName="CampoTrabajo" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:CampoTrabajo runat="server" ID="CampoTrabajo" />
        <asp:Button ID="BtContinuar" runat="server" Text="Continuar" OnClick="BtContinuar_Click" />
    </form>
</body>
</html>

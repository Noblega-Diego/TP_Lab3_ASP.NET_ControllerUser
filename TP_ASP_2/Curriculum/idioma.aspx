<%@ Page Language="C#" AutoEventWireup="true" CodeFile="idioma.aspx.cs" Inherits="Curriculum_idioma" %>

<%@ Register Src="~/UserControler/TextBoxNoEmpty.ascx" TagPrefix="uc1" TagName="TextBoxNoEmpty" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:TextBoxNoEmpty runat="server" ID="TbIdioma" />
        <asp:RadioButtonList ID="RbNivelConocimiento" runat="server">
            <asp:ListItem Text="Basico" value="basico"/>
            <asp:ListItem Text="Intermedio" value="intermedio"/>
            <asp:ListItem Text="Avanzado" value="avanzado"/>
        </asp:RadioButtonList>
        <asp:Button Text="Finalizar" ID="BtFinalizar" runat="server" OnClick="BtFinalizar_Click" />
    </form>
</body>
</html>

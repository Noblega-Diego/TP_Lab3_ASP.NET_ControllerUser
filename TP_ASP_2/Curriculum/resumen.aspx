<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resumen.aspx.cs" Inherits="Curriculum_resumen" %>

<%@ Register Src="~/UserControler/TextBoxNoEmpty.ascx" TagPrefix="uc1" TagName="TextBoxNoEmpty" %>
<%@ Register Src="~/Curriculum/controles/CampoEducacional.ascx" TagPrefix="uc1" TagName="CampoEducacional" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <%Curriculum cv = (Curriculum)Session["curriculum"];%>
    <h2>Curriculum</h2>
    <h4>Datos Personales</h4>
    <div>
        <p>Nombre: <span><% Response.Write(cv.Nombre); %></span></p>
    </div>
    <div>
        <p>Apellido: <span><% Response.Write(cv.Apellido); %></span></p>
    </div>
    <div>
        <p>Dni: <span><% Response.Write(cv.Dni); %></span></p>
    </div>
    <div>
        <p>Fecha Nacimiento: <span><% Response.Write(cv.fecha.ToString()); %></span></p>
    </div>
    <h4>Estudios</h4>
    <%foreach (Educacion e in cv.Estudios){%>
        <div>
            <p><span><%Response.Write(e.Titulo);%></span></p>
        </div>        
    <%}; %>

</body>
</html>

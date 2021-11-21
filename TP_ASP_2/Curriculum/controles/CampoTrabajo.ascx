<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CampoTrabajo.ascx.cs" Inherits="Curriculum_controles_CampoTrabajo" %>
<%@ Register Src="~/UserControler/Fecha.ascx" TagPrefix="uc1" TagName="Fecha" %>
<%@ Register Src="~/UserControler/TextBoxNoEmpty.ascx" TagPrefix="uc1" TagName="TextBoxNoEmpty" %>


<div>
    <uc1:TextBoxNoEmpty runat="server" Title="Lugar de trabajo" ID="LugarTrabajo" />
    <uc1:TextBoxNoEmpty runat="server" Title="Tarea" ID="Tarea" />
    <uc1:Fecha runat="server" Title="Fecha de inicio" ID="FechaInicio" />
    <uc1:Fecha runat="server" Title="Fecha de fin" ID="FechaFin" />
</div>

<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CampoEducacional.ascx.cs" Inherits="Curriculum_modelos_campoEducacional" %>
<%@ Register src="../../UserControler/TextBoxNoEmpty.ascx" tagname="TextBoxNoEmpty" tagprefix="uc1" %>
<div>
    <div>
        <asp:Label Text="Estudio" ID="LabelNivel" runat="server" />
        <asp:DropDownList ID="Nivel" runat="server">
            <asp:ListItem Text="Secundaria"/>
            <asp:ListItem Text="Tecnicatura"/>
            <asp:ListItem Text="Univeritaria"/>
            <asp:ListItem Text="Curso"/>
        </asp:DropDownList>
    </div>
    <uc1:TextBoxNoEmpty Title="Titulo" ID="Titulo" runat="server" />
    <uc1:TextBoxNoEmpty Title="Establecimiento" ID="Establecimiento" runat="server" />
</div>

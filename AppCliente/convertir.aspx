<%@ Page Language="C#" AutoEventWireup="true" CodeFile="convertir.aspx.cs" Inherits="convertir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <div>
            <asp:TextBox ID="tx_valor" runat="server"/>
            <asp:DropDownList ID="dl_Unidad" runat="server">
                <asp:ListItem Text="kilometros (km)" Value="km"/>
                <asp:ListItem Text="metros (m)" Value="m" />
                <asp:ListItem Text="decimetros (dm)" Value="dm" />
                <asp:ListItem Text="centimetros (cm)" Value="cm" />
                <asp:ListItem Text="milimetros (mm)" Value="mm" />
                <asp:ListItem Text="micrometros (µm)" Value="µm" />
            </asp:DropDownList>
        </div>
        <div>
            <div>
                <asp:Label Text="unidad a convertir" runat="server" />
                <asp:DropDownList ID="dl_unidadConvertir" runat="server">
                    <asp:ListItem Text="kilometros (km)" Value="km"/>
                    <asp:ListItem Text="metros (m)" Value="m" />
                    <asp:ListItem Text="decimetros (dm)" Value="dm" />
                    <asp:ListItem Text="centimetros (cm)" Value="cm" />
                    <asp:ListItem Text="milimetros (mm)" Value="mm" />
                    <asp:ListItem Text="micrometros (µm)" Value="µm" />
                </asp:DropDownList>
            </div>
            
            <asp:Button ID="bt_convertir" Text="Convertir" runat="server" OnClick="Convertir_Click" />
        </div>
    </form>
    <div>
        <p>El resultado es: <span id="resultado" runat="server"></span></p>
    </div>
</body>
</html>

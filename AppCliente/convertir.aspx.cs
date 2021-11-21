using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class convertir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Convertir_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
            return;

        ServidorWSConversion.ConvertSoapClient ConvertWs = new ServidorWSConversion.ConvertSoapClient();
        
        resultado.InnerText = ConvertWs.Convertir(
                Convert.ToDouble(tx_valor.Text),
                dl_Unidad.SelectedItem.Value,
                dl_unidadConvertir.SelectedItem.Value
            ).ToString() + dl_unidadConvertir.SelectedItem.Value;
    }
}
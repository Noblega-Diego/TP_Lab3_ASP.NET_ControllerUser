using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControler_RangoHijosMenores : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string Title
    {
        get { return Label.Text; }
        set { Label.Text = value; }
    }

    protected void ValidarTextBox(object source, ServerValidateEventArgs args)
    {
        args.IsValid = validarCantidadHijos(args.Value);
    }

    private bool validarCantidadHijos(string value)
    {
        try { return Convert.ToInt32(value) < 18 && Convert.ToInt32(value) >= 0; }
        catch (Exception ex) { }
        return false;
    }
}
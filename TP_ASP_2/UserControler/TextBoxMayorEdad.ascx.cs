using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControler_TextBoxMayorEdad : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string Title
    {
        get { return Label.Text; }
        set { Label.Text = value; }
    }
    public string Value
    {
        get { return Input.Text; }
    }

    protected void ValidarTextBox(object source, ServerValidateEventArgs args)
    {
        args.IsValid = validarEdad(args.Value);
    }

    private bool validarEdad(string value)
    {
        try { return Convert.ToInt32(value) >= 18; }
        catch (Exception ex) { }
        return false;
    }
}
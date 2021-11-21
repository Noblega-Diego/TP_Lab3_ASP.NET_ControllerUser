using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControler_TextBoxDni : System.Web.UI.UserControl
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

    private bool ValidarDni(string Dni)
    {
        Regex rg = new Regex(@"[A-Z_a-z\D]");
        Dni = Dni.Replace("-", "");
        if (rg.IsMatch(Dni))
            return false;
        if (Dni.Length != 8)
            return false;
        return true;
    }

    protected void ValidarTextBox(object source, ServerValidateEventArgs args)
    {
        args.IsValid = ValidarDni(args.Value);
    }
}
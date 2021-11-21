using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Curriculum_modelos_campoEducacional : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string GetNivelEstudio()
    {
        return Nivel.SelectedItem.Value;
    }

    public string GetTitulo()
    {
        return Titulo.Value;
    }

    public string GetEstablecimiento() 
    {
        return Establecimiento.Value;
    }
}
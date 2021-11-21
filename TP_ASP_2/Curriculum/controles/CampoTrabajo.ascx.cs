using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Curriculum_controles_CampoTrabajo : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public String GetLugarTrabajo()
    {
        return LugarTrabajo.Value;
    }

    public String GetCargoACumplir()
    {
        return Tarea.Value;
    }

    public DateTime GetFechaInicio()
    {
        return FechaInicio.GetDate();
    }
    
    public DateTime GetFechaFin()
    {
        return FechaFin.GetDate();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Curriculum_trabajos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["curriculum"] == null)
        {
            Response.Redirect("/Curriculum/datospersonales.aspx");
        }
    }

    protected void BtContinuar_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            Curriculum cv = (Curriculum)Session["curriculum"];
            Experiencia exp = new Experiencia()
            {
                LugarTrabajo = CampoTrabajo.GetLugarTrabajo(),
                Tarea = CampoTrabajo.GetCargoACumplir(),
                Inicio = CampoTrabajo.GetFechaInicio(),
                Fin = CampoTrabajo.GetFechaFin()
            };

            cv.Experiencias.Add(exp);
            Response.Redirect("/Curriculum/idioma.aspx");
        }
    }
}

    
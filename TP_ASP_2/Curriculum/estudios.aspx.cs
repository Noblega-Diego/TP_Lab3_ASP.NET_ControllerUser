using System;
using System.Collections;
using System.Collections.Generic;
using System.Web.UI;
public partial class Curriculum_estudios : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["curriculum"] == null)
        {
            Response.Redirect("/Curriculum/datospersonales.aspx");
        }
        else
        {
            if (Session["inputsEstudios"] == null)
                Session["inputsEstudios"] = new List<Curriculum_modelos_campoEducacional>();
            List<Curriculum_modelos_campoEducacional> lista = (List<Curriculum_modelos_campoEducacional>)Session["inputsEstudios"];
            foreach (Control c in lista)
            {
                CamposEstudio.Controls.Add(c);
            }
        }
    }

    protected void Agregar_Click(object sender, EventArgs e)
    {
        AgregarIngresoDeEstudio();
    }

    private void AgregarIngresoDeEstudio()
    {
        if (Session["inputsEstudios"] != null)
        {
            List<Curriculum_modelos_campoEducacional> lista = (List<Curriculum_modelos_campoEducacional>)Session["inputsEstudios"];
            Curriculum_modelos_campoEducacional campo = (Curriculum_modelos_campoEducacional)LoadControl(@"~\Curriculum\controles\CampoEducacional.ascx");
            lista.Add(campo);
            CamposEstudio.Controls.Add(campo);
        }
    }

    protected void Continuar_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            CargarEstudios();
            Response.Redirect("/Curriculum/trabajos.aspx");
        }
    }

    private void CargarEstudios()
    {
        IEnumerator campos = CamposEstudio.Controls.GetEnumerator();
        Curriculum curriculum = (Curriculum)Session["curriculum"];
        List<Educacion> estudios = new List<Educacion>();
        while (campos.MoveNext())
        {
            Educacion educacion = new Educacion()
            {
                NivelEstudio = ((Curriculum_modelos_campoEducacional)campos.Current).GetNivelEstudio(),
                Titulo = ((Curriculum_modelos_campoEducacional)campos.Current).GetTitulo(),
                Establecimiento = ((Curriculum_modelos_campoEducacional)campos.Current).GetEstablecimiento()
            };
            estudios.Add(educacion);
        }
        curriculum.Estudios = estudios;
    }
}
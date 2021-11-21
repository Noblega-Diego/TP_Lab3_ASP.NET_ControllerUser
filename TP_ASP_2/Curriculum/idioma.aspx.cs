using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Curriculum_idioma : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["curriculum"] == null)
            Response.Redirect("/Curriculum/datospersonales.aspx");
    }

    protected void BtFinalizar_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Idioma idioma = new Idioma()
            {
                Nombre = TbIdioma.Value,
                Nivel = RbNivelConocimiento.SelectedItem.Value
            };
            Curriculum cv = (Curriculum)Session["curriculum"];
            cv.Idiomas.Add(idioma);
            Response.Redirect("/Curriculum/resumen.aspx");
        }
    }
}
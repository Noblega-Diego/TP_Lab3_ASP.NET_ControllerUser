using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Curriculum_datospersonales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void BtSiguiente_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Curriculum cv = new Curriculum()
            {
                Nombre = Nombre.Value,
                Apellido = Apellido.Value,
                Dni = Convert.ToInt64(Dni.Value),
                Domicilio = Domicilio.Value,
                Nacionalidad = ComboPaises.Value,
                fecha = Fecha.GetDate()
            };
            Session["curriculum"] = cv;
            Response.Redirect("/Curriculum/estudios.aspx");
        }
    }
}
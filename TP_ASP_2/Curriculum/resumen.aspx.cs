using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Curriculum_resumen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if(Session["curriculum"] == null)
        {
            Response.Redirect("/Curriculum/datospersonales.aspx");
        }
    }
}
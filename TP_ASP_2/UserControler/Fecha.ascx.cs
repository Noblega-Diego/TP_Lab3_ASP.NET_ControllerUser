using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControler_Fecha : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public string Title
    {
        get { return Label.Text; }
        set { Label.Text = value; }
    }
    public DateTime GetDate()
    {
        DateTime fecha = new DateTime(
            Convert.ToInt32(Anio.Text), 
            Convert.ToInt32(Mes.SelectedItem.Value), 
            Convert.ToInt32(Dia.Text));
        
        return fecha;
    }

    protected void CstValDia_ServerValidate(object source, ServerValidateEventArgs args)
    {
        try
        {
            int dia = Convert.ToInt32(args.Value);
            if(dia > 0 && dia <= 31)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
        catch(FormatException e)
        {
            args.IsValid = false;
        }
    }

    protected void CstValAnio_ServerValidate(object source, ServerValidateEventArgs args)
    {
        try
        {
            int dia = Convert.ToInt32(args.Value);
            if (dia > 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
        catch (FormatException e)
        {
            args.IsValid = false;
        }
    }
}
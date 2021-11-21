using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de Convert
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class Convert : System.Web.Services.WebService
{

    public Convert()
    {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public double Convertir(double valor, String escalaOriginal, String escalaTrasladar)
    {
        Dictionary<String, UInt32> escalas = new Dictionary<string, uint>()
        {
            {"km", 1},
            {"m",  1000},
            {"dm", 10000},
            {"cm", 100000},
            {"mm", 1000000},
            {"µm", 1000000000}
        };
        double medidaConvertida = (valor/escalas[escalaOriginal]) * escalas[escalaTrasladar];
        return medidaConvertida;
    }


}

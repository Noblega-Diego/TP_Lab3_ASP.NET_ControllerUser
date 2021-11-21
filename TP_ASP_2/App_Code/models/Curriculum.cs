using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Curriculum
/// </summary>
public class Curriculum
{

    public String Nombre { get; set; }
    public String Apellido { get; set; }
    public long Dni { get; set; }
    public String Domicilio { get; set; }
    public String Nacionalidad { get; set; }
    public String Sexo { get; set; }
    public DateTime fecha { get; set; }

    public List<Educacion> Estudios
    {
        get{ return estudios; }
        set{ estudios = value; }
    }

    public List<Experiencia> Experiencias
    {
        get { return experiencias; }
        set { experiencias = value; }
    }
    
    public List<Idioma> Idiomas
    {
        get { return idiomas; }
        set { idiomas = value; }
    }

    private List<Educacion> estudios = new List<Educacion>();
    private List<Experiencia> experiencias = new List<Experiencia>();
    private List<Idioma>  idiomas = new List<Idioma>();


    public Curriculum()
    {
    }
}
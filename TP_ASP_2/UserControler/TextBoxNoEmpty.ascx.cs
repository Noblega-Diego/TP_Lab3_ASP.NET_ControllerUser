using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControler_TextBoxNoEmpty : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    public string Title
    {
        get { return Label.Text; }
        set { Label.Text = value; }
    }

    public string Value
    {
        get { return Input.Text; }
    }

}
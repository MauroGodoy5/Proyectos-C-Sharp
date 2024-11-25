using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace desempeño2
{
    public partial class altagenero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourcegeneros.InsertParameters["nombre_genero"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourcegeneros.Insert();
            this.resultado.Text = "se efectuó la carga del genero";
        }
    }
}
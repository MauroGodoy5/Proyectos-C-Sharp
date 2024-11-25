using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial1_DAI5
{
    public partial class bajaservicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceborrarservicio.DeleteParameters["cod_servicio"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.SqlDataSourceborrarservicio.Delete();
            if (cant == 1)
                this.resultado.Text = "Se borró el servicio";
            else
                this.resultado.Text = "No existe el codigo";
        }
    }
}
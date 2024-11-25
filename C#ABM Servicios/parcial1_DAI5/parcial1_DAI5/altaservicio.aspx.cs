using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial1_DAI5
{
    public partial class altaservicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceservicios.InsertParameters["desc_servicio"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourceservicios.InsertParameters["tipo_servicio"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceservicios.InsertParameters["rubro"].DefaultValue = this.DropDownList2.SelectedValue;
            this.SqlDataSourceservicios.Insert();
            this.resultado.Text = "se efectuó la carga";
            this.TextBox1.Text = "";
            this.TextBox1.Text = "";
        }
    }
}
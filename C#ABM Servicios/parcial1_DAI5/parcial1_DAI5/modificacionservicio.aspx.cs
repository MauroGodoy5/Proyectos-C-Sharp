using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial1_DAI5
{
    public partial class modificacionservicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceservicio.SelectParameters["cod_servicio"].DefaultValue=this.TextBox1.Text;
            this.SqlDataSourceservicio.DataSourceMode =SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSourceservicio.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                this.TextBox2.Text =registros["desc_servicio"].ToString();

                this.DropDownList1.SelectedValue = registros["tipo_servicio"].ToString();
                this.DropDownList1.DataSource = this.SqlDataSourcetiposervicio;
                this.DropDownList1.DataTextField = "desc_tipo_serv";
                this.DropDownList1.DataValueField = "cod_tipo_serv";
                this.DropDownList1.DataBind();

                this.DropDownList2.SelectedValue = registros["rubro"].ToString();
                this.DropDownList2.DataSource =this.SqlDataSourcerubro;
                this.DropDownList2.DataTextField = "desc_rubro";
                this.DropDownList2.DataValueField = "cod_rubro";
                this.DropDownList2.DataBind();
            }
            else
                this.resultado1.Text = "No existe un servicio con dicho código";
 
    }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceservicio.UpdateParameters["desc_servicio"].DefaultValue = this.TextBox2.Text;

            

            this.SqlDataSourceservicio.UpdateParameters["tipo_servicio"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceservicio.UpdateParameters["rubro"].DefaultValue = this.DropDownList2.SelectedValue;

            this.SqlDataSourceservicio.UpdateParameters["cod_servicio"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.SqlDataSourceservicio.Update();
            if (cant == 1)
                this.resultado2.Text = "Se modifico el artículo";
            else
                this.resultado2.Text = "No existe el codigo";
        }
    }
}
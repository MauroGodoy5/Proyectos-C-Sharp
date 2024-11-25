using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace desempeño2
{
    public partial class altaalquiler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            this.SqlDataSourcepelicula.SelectParameters["Id_pelicula"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourcepelicula.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSourcepelicula.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                this.SqlDataSourcealquiler.InsertParameters["Id_pelicula"].DefaultValue = this.TextBox1.Text;
                DateTime fechaActual = DateTime.Now;
                this.SqlDataSourcealquiler.InsertParameters["fecha_alquiler"].DefaultValue = fechaActual.ToString();

                this.SqlDataSourcealquiler.Insert();
                this.resultado.Text = "Pelicula Alquilada";
            }
            else
                this.resultado.Text = "No existe una pelicula con dicho código";


        }
    }
}
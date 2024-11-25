using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace desempeño2
{
    public partial class altapelicula : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (File.Exists(this.Server.MapPath(".") + "/movies/" + this.FileUpload1.FileName))
            {
            this.resultadofoto.Text = "Existe un archivo con dicho nombre en el servidor";
            
            }
            else
            {
                this.SqlDataSourcepeliculas.InsertParameters["nombre_pelicula"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSourcepeliculas.InsertParameters["web_pelicula"].DefaultValue = this.TextBox2.Text;
                this.SqlDataSourcepeliculas.InsertParameters["descripcion"].DefaultValue = this.TextBox3.Text;
                this.SqlDataSourcepeliculas.InsertParameters["Id_genero"].DefaultValue = this.DropDownList1.SelectedValue;
                this.SqlDataSourcepeliculas.InsertParameters["anio"].DefaultValue = this.TextBox4.Text;
                this.SqlDataSourcepeliculas.InsertParameters["archivo"].DefaultValue = this.FileUpload1.FileName;
                this.SqlDataSourcepeliculas.Insert();
                this.resultado.Text = "se efectuó la carga de la pelicula";
                this.TextBox1.Text = "";
                this.TextBox2.Text = "";
                this.TextBox3.Text = "";
                this.TextBox4.Text = "";
                this.FileUpload1.SaveAs(Server.MapPath(".") + "/movies/" +
               this.FileUpload1.FileName);
                this.resultadofoto.Text = "Archivo subido";
                this.nombrearchivo.Text = this.FileUpload1.FileName;
                HttpCookie cookie1 = new HttpCookie("movie", this.TextBox1.Text);
                this.Response.Cookies.Add(cookie1);
                this.cookie.Text = "Se creó la cookie";

            }
            
        }
    }
}




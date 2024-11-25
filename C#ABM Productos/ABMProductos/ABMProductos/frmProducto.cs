using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ABMProductos
{
    public partial class frmProducto : Form
    {
        Datos odatos = new Datos();
        const int tam = 10;
        Producto[] aproductos = new Producto[tam];
        private bool crearproductonuevo = false;
        int c;

        public frmProducto()
        {
            for(int i = 0; i< tam; i++)
            {
                aproductos[i] = null;
            }

            InitializeComponent();
        }

        private void habilitar(bool no)
        {
            txtCodigo.Enabled = no;
            txtDetalle.Enabled = no;
            txtPrecio.Enabled = no;
            btnCancelar.Enabled = no;
            btnGrabar.Enabled = no;
            btnNuevo.Enabled = !no;
            btnBorrar.Enabled = !no;        
            btnSalir.Enabled = !no;
            lstProducto.Enabled = !no;
        }






        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void frmProducto_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("estas seguro que queres salir?", "Saliendo",
                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
                e.Cancel = false;
            else
                e.Cancel = true;

        }

        private void btnBorrar_Click(object sender, EventArgs e)
        {
            {
                if (MessageBox.Show("estas seguro de eliminar esta persona?", "eliminando",
                       MessageBoxButtons.YesNo, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
                {
                    string consultaSQL = $"DELETE FROM Producto WHERE codigo={aproductos[lstProducto.SelectedIndex].pCodigo}";
                    odatos.actualizar(consultaSQL);
                    cargarlista( "Producto");
                    habilitar(false);
                }
            }
        }
        private void limpiar()
        {
            txtCodigo.Clear();
            txtDetalle.Clear();
            txtPrecio.Clear();
            cboMarca.SelectedIndex = -1;
            rbtNetBook.Checked = false;
            rbtNoteBook.Checked = false;
            dtpFecha.Value = DateTime.Today;



        }
        private void btnNuevo_Click(object sender, EventArgs e)
        {
            habilitar(true);
            crearproductonuevo = true;
           
            limpiar();
        }

        private void frmProducto_Load(object sender, EventArgs e)
        {
            cargarcombo(cboMarca, "marca", "id_tipo_marca", "n_tipo_marca");
            cargarlista("Producto");

            habilitar(false);
        }

        private void cargarlista(string nombreTabla)
        {
            odatos.leerTabla(nombreTabla);
            c = 0;
            while (odatos.pLector.Read())
            {
                Producto p = new Producto();
                if (!odatos.pLector.IsDBNull(0)) 
                p.pCodigo = odatos.pLector.GetInt32(0);
                if  (!odatos.pLector.IsDBNull(1))
                p.pDetalle = odatos.pLector.GetString(1);
                if (!odatos.pLector.IsDBNull(2))
                     p.pTipo = odatos.pLector.GetInt32(2);
                if (!odatos.pLector.IsDBNull(3))
                p.pMarca = odatos.pLector.GetInt32(3);
                    if (!odatos.pLector.IsDBNull(4))
                  p.pPrecio = odatos.pLector.GetDouble(4);
                if (!odatos.pLector.IsDBNull(5))
                p.pFecha = odatos.pLector.GetDateTime(5);

                aproductos[c] = p;
                c++;
            }
            lstProducto.Items.Clear();
            for(int i =0; i < c ; i++)
            {
                lstProducto.Items.Add(aproductos[i].ToString());
            }
            odatos.desconectar();
        }
        private void cargarcombo(ComboBox combo, string nombreTabla, string pk, string nombre)
        {
            
            DataTable tabla = new DataTable();
          
;
            tabla = odatos.consultartabla(nombreTabla);
            combo.DataSource = tabla;
            combo.DisplayMember = nombre;
            combo.ValueMember = pk;

        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            habilitar(true);
            crearproductonuevo = false;
            txtCodigo.Enabled = false;

        }

        private void btnGrabar_Click(object sender, EventArgs e)
        {
            if (validarDatos())
            {
                string consultaSQL = "";
                if (crearproductonuevo)
                {

                    Producto p = new Producto();
                    p.pCodigo = Convert.ToInt32(txtCodigo.Text);
                    p.pDetalle = txtDetalle.Text;
                    p.pPrecio = Convert.ToDouble(txtPrecio.Text);
                    p.pMarca = cboMarca.SelectedIndex;
                    p.pFecha = dtpFecha.Value;
                    if (rbtNoteBook.Checked)
                    {
                        p.pTipo = 1;
                    }
                    if (rbtNetBook.Checked)
                    {
                        p.pTipo = 2;
                    }

                    if (!existe(p.pCodigo))
                    {
                        
                       consultaSQL =  $"INSERT INTO Producto(codigo, detalle,tipo, marca,precio,fecha) VALUES ({p.pCodigo}, '{p.pDetalle}', {p.pTipo}, {p.pMarca},{p.pPrecio},'{p.pFecha}') ";

                        //Para SQL
                       // consultaSQL = $"INSERT INTO Producto( detalle,tipo, marca,precio,fecha) VALUES ( '{p.pDetalle}', {p.pTipo}, {p.pMarca},{p.pPrecio},'{p.pFecha}') ";
                        //oDatos.actualizar(consultaSQL);
                    }
                    odatos.actualizar(consultaSQL);
                }
                else
                {
                    int i = lstProducto.SelectedIndex;
                    aproductos[i].pCodigo = Convert.ToInt32(txtCodigo.Text);
                    aproductos[i].pDetalle = txtDetalle.Text;
                    aproductos[i].pFecha = dtpFecha.Value;
                    aproductos[i].pPrecio = Convert.ToDouble(txtPrecio.Text);
                    aproductos[i].pMarca = cboMarca.SelectedIndex;
                    
                    if (rbtNoteBook.Checked)
                    {
                        aproductos[i].pTipo = 1;
                    }
                    if (rbtNetBook.Checked)
                    {
                        aproductos[i].pTipo = 2;
                    }

                    consultaSQL = $"UPDATE Producto SET  detalle='{aproductos[i].pDetalle}', tipo= {aproductos[i].pTipo}, marca={aproductos[i].pMarca},precio={aproductos[i].pPrecio},fecha='{aproductos[i].pFecha}'" +
                        $"WHERE codigo={aproductos[i].pCodigo}";
                    //update
                    odatos.actualizar(consultaSQL);
                }
               cargarlista( "Producto");
            }

            habilitar(false);
            crearproductonuevo = false;

        }


        private bool validarDatos()
        {
            if (txtCodigo.Text == "")
            {
                MessageBox.Show("debe ingresar el codigo...");
                txtCodigo.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(txtDetalle.Text))
            {
                MessageBox.Show("debe ingresar el detalle del producto...");
                txtDetalle.Focus();
                return false;
            }
            if (txtPrecio.Text == string.Empty)
            {
                MessageBox.Show("debe ingresar el Precio...");
                txtPrecio.Focus();
                return false;
            }
            if (cboMarca.SelectedIndex == -1)
            {
                MessageBox.Show("ingrese una marca...");
                cboMarca.Focus();
                return false;
            }
            if (rbtNoteBook.Checked == false)
            {
                MessageBox.Show("tilda una opcion...");
                rbtNoteBook.Focus();
                return false;
            }
            return true;
        }

        private bool existe(int pk)
        {
            bool x = false;
            for (int i = 0; i < c; i++)
            {

                if (aproductos[i].pCodigo==pk)
                    x = true;

            }
            return x;
        }

        private void lstProducto_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            btnEditar.Enabled = lstProducto.SelectedIndex >= 0;
            if(lstProducto.SelectedIndex >= 0)
            {

                int i = lstProducto.SelectedIndex;
                txtCodigo.Text = aproductos[i].pCodigo.ToString();
                txtDetalle.Text = aproductos[i].pDetalle;
                dtpFecha.Value = aproductos[i].pFecha;
                txtPrecio.Text = aproductos[i].pPrecio.ToString();
                cboMarca.SelectedIndex = aproductos[i].pMarca;
                 rbtNoteBook.Checked = aproductos[i].pTipo > 0;
            }
              
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            habilitar(false);
            limpiar();
        }
    }
}
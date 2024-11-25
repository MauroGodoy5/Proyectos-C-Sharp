using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MedicosPacientes
{
    public partial class frmClinica : Form
    {
        double cont,sumCosto;
        Medico medMayor;
        bool primero;
        public frmClinica()
        {
            InitializeComponent();
            cont = sumCosto = 0;
            medMayor = null;
            primero = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Medico medico = new Medico();
            Paciente paciente = new Paciente();
            medico.Nombre = txtNombreMed.Text;
            medico.DNI = Convert.ToInt32(txtDniMed.Text);
            medico.Telefono = Convert.ToInt32(txtTelefonoMed.Text);
            medico.Sexo = rbtMasculinoMed.Checked;
            medico.Especialidad = txtEspecialidad.Text;
            medico.CostoConsulta = Convert.ToDouble(txtCostoConsulta.Text);
            
            paciente.Nombre = txtNombrePacie.Text;
            paciente.DNI = Convert.ToInt32(txtDniPaci.Text);
            paciente.Telefono = Convert.ToInt32(txtTelefonoPaci.Text);
            paciente.Sexo = rbtMasculinoPaci.Checked;
            paciente.ObraSocial = txtObraSocial.Text;
            paciente.HistClinica = Convert.ToInt32(txtHistoriaClinica.Text);
            MessageBox.Show(medico.toStringMedico(),"Informacion Medico", MessageBoxButtons.OK, MessageBoxIcon.Information);
            MessageBox.Show(paciente.toStringPaciente(), "Informacion Paciente", MessageBoxButtons.OK, MessageBoxIcon.Information);
            sumCosto += medico.CostoConsulta;
            cont++;
            lblCanPacientes.Text = Convert.ToString(cont);
            lblPromedioConsulta.Text = Convert.ToString(Math.Round(sumCosto / cont, 2));
            if(primero)
            {
                primero = false;
                medMayor = medico;
            }
            else
            {
                if (medico.CostoConsulta > medMayor.CostoConsulta)
                    medMayor = medico;
            }
            richMedMayor.Text = medMayor.toStringMedico();
            
        }
    }
}

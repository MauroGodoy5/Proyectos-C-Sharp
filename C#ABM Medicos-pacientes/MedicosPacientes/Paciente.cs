using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedicosPacientes
{
    class Paciente : Persona
    {
        string obraSocial;
        int histClinica;
        public Paciente(string obraSocial, int histClinica, string nom, int doc, int tel, bool sex) : base(nom, doc, tel, sex) 
        {
            this.ObraSocial = obraSocial;
            this.HistClinica = histClinica;
        }
        public Paciente() : base()
        {
            ObraSocial = "";
            HistClinica = 0;
        }
        //Propiedades
        public string ObraSocial { get => obraSocial; set => obraSocial = value; }
        public int HistClinica { get => histClinica; set => histClinica = value; }
        //Metodos
        public string toStringPaciente()
        {
            string text;
            text = base.toStringPersona() + "\nObra Social" + obraSocial + "\nHistoria clinica nro. : " + histClinica.ToString();
            return text;
        }


    }
}

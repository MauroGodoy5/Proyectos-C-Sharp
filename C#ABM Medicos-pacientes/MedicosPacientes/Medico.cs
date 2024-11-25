using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedicosPacientes
{
    class Medico:Persona
    {
        string especialidad;
        double costoConsulta;
        //Constructores
        public Medico():base()
        {
            especialidad = "";
            costoConsulta = 0;
        }
        public Medico(string esp, double costCon, string nom, int doc, int tel, bool sex) : base(nom, doc, tel, sex)
        {
            especialidad = esp;
            costoConsulta = costCon;
        }


        //Propiedades
        public string Especialidad { get => especialidad; set => especialidad = value; }
        public double CostoConsulta { get => costoConsulta; set => costoConsulta = value; }
        //Metodos
        public string toStringMedico()
        {
            string txt;
            txt = base.toStringPersona() + "\nEspecialidad: " + especialidad + "\nCosto de Consulta: " + costoConsulta.ToString();
            return txt;
        }
    }
}

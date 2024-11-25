using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedicosPacientes
{
    class Persona
    {
        string nombre;
        int dni, telefono;
        bool sexo;
        //Constructores
        public Persona(string nombre, int dni, int telefono, bool sexo)
        {
            this.nombre = nombre;
            this.dni = dni;
            this.telefono = telefono;
            this.sexo = sexo;
        }
        public Persona()
        {
            nombre = "";
            dni = 0;
            telefono = 0;
            sexo = true;
        }
        //Propiedades
        public string Nombre
        {
            set { nombre = value; }
            get { return nombre; }
        }
        public int DNI
        {
            set { dni = value; }
            get { return dni; }
        }
        public int Telefono
        {
            set { telefono = value; }
            get { return telefono; }
        }
        public bool Sexo
        {
            set { sexo = value; }
            get { return sexo; }
        }
        public string toStringSexo()
        {
            string sex;
            if (sexo)
                sex = "Masculino";
            else
                sex = "Femenino";
            return sex;
        }
        public string toStringPersona()
        {
            string texto;
            texto = "Nombre: " + nombre + "\nDNI: " + dni.ToString() + "\nTelefono: " + telefono.ToString() + "\nSexo: " + toStringSexo();
            return texto;
        }
    }
}

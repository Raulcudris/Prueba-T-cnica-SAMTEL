using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web_School.Models
{
    public class Estudiante
    {
        public string Tipo_Identificacion { get; set; }
        public string Numero_Identificacion { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Sexo { get; set; }
        public DateTime Fecha_Nacimiento { get; set; }
        public string Direccion { get; set; }
        public string Correo_Electronico { get; set; }
        public string Telefono { get; set; }
    }
}

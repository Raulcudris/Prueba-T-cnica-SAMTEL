using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace API_Escuela.Models
{
    [Table("Materias")]
    public class Materias
    {
        [Key]
        public int Materia_Id { get; set; }
        [Required(ErrorMessage = "Requerido")]
        public string Codigo { get; set; }
        [Required(ErrorMessage = "Requerido")]
        [StringLength(200)]
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
    }
}


using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace API_Escuela.Models
{
    [Table("Notas")]
    public class Notas
    {
        [Key]
        public int Nota_Id { get; set; }
        [Required(ErrorMessage = "Requerido")]
        public int Materia_Id { get; set; }
        [Required(ErrorMessage = "Requerido")]
        public int Profesor_Id { get; set; }
        [Required(ErrorMessage = "Requerido")]
        public int Estudiante_Id { get; set; }
        [Required(ErrorMessage = "Requerido")]
        public double Calificacion { get; set; }

        public string Descripcion { get; set; }
    }
}

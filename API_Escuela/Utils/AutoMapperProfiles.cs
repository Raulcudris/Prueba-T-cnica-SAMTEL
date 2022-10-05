using API_Escuela.Dtos;
using API_Escuela.Models;
using AutoMapper;

namespace API_Escuela.Utils
{
    public class AutoMapperProfiles : Profile
    {
        public AutoMapperProfiles()
        {
            CreateMap<Estudiante, EstudianteDtos>().ReverseMap();
            CreateMap<EstudianteDtos, Estudiante>();

            CreateMap<Profesor, ProfesorDtos>().ReverseMap();
            CreateMap<ProfesorDtos, Profesor>();

            CreateMap<Materias, MateriasDtos>().ReverseMap();
            CreateMap<MateriasDtos, Materias>();

            CreateMap<Notas, NotasDtos>().ReverseMap();
            CreateMap<NotasDtos, Notas>();

        }
    }
}

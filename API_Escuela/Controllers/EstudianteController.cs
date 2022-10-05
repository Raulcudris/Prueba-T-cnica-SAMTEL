using API_Escuela.Context;
using API_Escuela.Dtos;
using API_Escuela.Models;
using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API_Escuela.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EstudianteController : ControllerBase
    {
        private readonly AppDbContext _context;
        private readonly IMapper _mapper;

        public EstudianteController(AppDbContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }


        [HttpGet]
        public async Task<List<EstudianteDtos>> GetEstudiantes()
        {
            var estudiantes = await _context.Estudiante.ToListAsync();
            return _mapper.Map<List<EstudianteDtos>>(estudiantes);
        }


        // GET: api/Estudiante/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetAuthors(String id)
        {
            var estudiantes = await _context.Estudiante.FirstOrDefaultAsync(x => x.Numero_Identificacion == id);
            var result = _mapper.Map<Estudiante, EstudianteDtos>(estudiantes);
            return Ok(result);
        }
        // PUT: api/Estudiante/10658085
        [HttpPut("{id}")]
        public async Task<IActionResult> PutEstudiante(string id, Estudiante estudiante)
        {
            if (id != estudiante.Numero_Identificacion)
            {
                return BadRequest();
            }

            _context.Entry(estudiante).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UsersExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }
        private bool UsersExists(string id)
        {
            return _context.Estudiante.Any(e => e.Numero_Identificacion == id);
        }

        // DELETE: api/Estudiante/2
        [HttpDelete("{id}")]
        public async Task<ActionResult<Estudiante>> DeleteEstudiante(int id)
        {
            var estudiante = await _context.Estudiante.FindAsync(id);
            if (estudiante == null)
            {
                return NotFound();
            }

            _context.Estudiante.Remove(estudiante);
            await _context.SaveChangesAsync();

            return estudiante;
        }


    }
}

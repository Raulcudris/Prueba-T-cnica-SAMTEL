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
    public class ProfesorController : ControllerBase
    {

        private readonly AppDbContext _context;
        private readonly IMapper _mapper;
        public ProfesorController(AppDbContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        // GET: api/Profesores
        [HttpGet]
        public async Task<List<ProfesorDtos>> GetProfesores()
        {
            var profesores = await _context.Profesor.ToListAsync();
            return _mapper.Map<List<ProfesorDtos>>(profesores);
        }

        // GET: api/Estudiante/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetProfesores(string id)
        {
            var profesores = await _context.Profesor.FirstOrDefaultAsync(x => x.Numero_Identificacion == id);
            var result = _mapper.Map<Profesor, ProfesorDtos>(profesores);
            return Ok(result);
        }

        // POST: api/Profesor
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Profesor>> PostProfesor(Profesor profesor)
        {
            _context.Profesor.Add(profesor);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetProfesores", new { id = profesor.Profesor_Id }, profesor);
        }



        // PUT: api/Profesor/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutProfesor(string id, Profesor profesor)
        {
            if (id != profesor.Numero_Identificacion)
            {
                return BadRequest();
            }

            _context.Entry(profesor).State = EntityState.Modified;

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
            return _context.Profesor.Any(e => e.Numero_Identificacion == id);
        }

        // DELETE: api/Profesor/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Profesor>> DeleteProfesor(int id)
        {
            var profesor = await _context.Profesor.FindAsync(id);
            if (profesor == null)
            {
                return NotFound();
            }

            _context.Profesor.Remove(profesor);
            await _context.SaveChangesAsync();

            return profesor;
        }

    }
}

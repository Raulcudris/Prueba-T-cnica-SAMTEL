using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using Web_School.Models;

namespace Web_School.Controllers
{
    public class EstudianteController : Controller
    {
        Uri baseAddress = new Uri("https://localhost:44306/api");
        HttpClient estudiante;

        public EstudianteController()
        {
            estudiante = new HttpClient();
            estudiante.BaseAddress = baseAddress;
        }

        public IActionResult Index()
        {
            List<Estudiante> lista_Estudiante = new List<Estudiante>();
            HttpResponseMessage response = estudiante.GetAsync(estudiante.BaseAddress + "/Estudiante").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                lista_Estudiante = JsonConvert.DeserializeObject<List<Estudiante>>(data);
            }
            return View(lista_Estudiante);
        }

        public IActionResult Create()
        {
            return View();
        }


    }
}

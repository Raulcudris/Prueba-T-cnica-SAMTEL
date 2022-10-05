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
    public class MateriasController : Controller
    {
        Uri baseAddress = new Uri("https://localhost:44306/api");
        HttpClient materias;

        public MateriasController()
        {
            materias = new HttpClient();
            materias.BaseAddress = baseAddress;
        }

        public IActionResult Index()
        {
            List<Materias> lista_materias = new List<Materias>();
            HttpResponseMessage response = materias.GetAsync(materias.BaseAddress + "/Materias").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                lista_materias = JsonConvert.DeserializeObject<List<Materias>>(data);
            }
            return View(lista_materias);
        }
    }
}

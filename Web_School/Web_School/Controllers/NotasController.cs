using Microsoft.AspNetCore.Http;
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
    public class NotasController : Controller
    {
        Uri baseAddress = new Uri("https://localhost:44306/api");
        HttpClient notas;

        public NotasController()
        {
            notas = new HttpClient();
            notas.BaseAddress = baseAddress;
        }

        public IActionResult Index()
        {
            List<Notas> lista_notas = new List<Notas>();
            HttpResponseMessage response = notas.GetAsync(notas.BaseAddress + "/Notas").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                lista_notas = JsonConvert.DeserializeObject<List<Notas>>(data);
            }
            return View(lista_notas);
        }
    }
}

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
    public class ProfesorController : Controller
    {
        Uri baseAddress = new Uri("https://localhost:44306/api");
        HttpClient profesor;

        public ProfesorController()
        {
            profesor = new HttpClient();
            profesor.BaseAddress = baseAddress;
        }

        public IActionResult Index()
        {
            List<Profesor> lista_Profesor = new List<Profesor>();
            HttpResponseMessage response = profesor.GetAsync(profesor.BaseAddress + "/Profesor").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                lista_Profesor = JsonConvert.DeserializeObject<List<Profesor>>(data);
            }
            return View(lista_Profesor);
        }

     
        
    }
}

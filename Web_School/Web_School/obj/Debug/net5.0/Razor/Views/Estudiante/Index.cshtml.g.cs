#pragma checksum "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "f8555cccf5cbc659778e73d7942c389df4f53e77"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Estudiante_Index), @"mvc.1.0.view", @"/Views/Estudiante/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\_ViewImports.cshtml"
using Web_School;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\_ViewImports.cshtml"
using Web_School.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f8555cccf5cbc659778e73d7942c389df4f53e77", @"/Views/Estudiante/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5dfaad0738e173181be34ab7ef7f7b9083e4a63e", @"/Views/_ViewImports.cshtml")]
    public class Views_Estudiante_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<Web_School.Models.Estudiante>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
  
    ViewData["Title"] = "Index";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<h1>Listado de Estudiantes</h1>\r\n\r\n<p>\r\n");
            WriteLiteral("</p>\r\n<table class=\"table\">\r\n    <thead>\r\n        <tr>\r\n            <th>\r\n                ");
#nullable restore
#line 16 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Tipo_Identificacion));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
#nullable restore
#line 19 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Numero_Identificacion));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
#nullable restore
#line 22 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Nombre));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
#nullable restore
#line 25 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Apellido));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
#nullable restore
#line 28 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Sexo));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
#nullable restore
#line 31 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Fecha_Nacimiento));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
#nullable restore
#line 34 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Direccion));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
#nullable restore
#line 37 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Correo_Electronico));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
#nullable restore
#line 40 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Telefono));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n            <th></th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n");
#nullable restore
#line 46 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
 foreach (var item in Model) {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <tr>\r\n            <td>\r\n                ");
#nullable restore
#line 49 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Tipo_Identificacion));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 52 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Numero_Identificacion));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 55 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Nombre));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 58 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Apellido));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 61 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Sexo));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 64 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Fecha_Nacimiento));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 67 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Direccion));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 70 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Correo_Electronico));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 73 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Telefono));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n");
            WriteLiteral("            </td>\r\n        </tr>\r\n");
#nullable restore
#line 81 "F:\Proyecto-App-Entrevista\API_Escuela\Web_School\Web_School\Views\Estudiante\Index.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("    </tbody>\r\n</table>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<Web_School.Models.Estudiante>> Html { get; private set; }
    }
}
#pragma warning restore 1591

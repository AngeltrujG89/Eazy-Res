using EasyRez.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Diagnostics;
using Microsoft.JSInterop;
using ServiceStack;

namespace EasyRez.Pages
{
    public class ValidacionArchivosModel : PageModel
    {
        DatosValidacionArchivos datosValidacionArchivos  = new DatosValidacionArchivos();
        IJSRuntime JS { get; set; }

        public List<DatosValidacion> lstDatosValidacion { get; set; }
        public void onGet()
        {
            lstDatosValidacion = datosValidacionArchivos.GetAllDatosValidacion().ToList();
            List<DatosValidacion> tipo = lstDatosValidacion.GroupBy(df => df.idValidacion).Select(gdf => gdf.First()).ToList();
        }
        protected async Task ValidarArchivo()
        {
            await JS.InvokeVoidAsync("validarArchivo", DotNetObjectReference.Create(this));
        }
    } 
}
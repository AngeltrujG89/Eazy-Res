using System.ComponentModel.DataAnnotations;

namespace EasyRez.Models
{
    public class DatosValidacion
    {
        public int idValidacion { get; set; }
        public int lineaArchivo { get; set; }
        public string descricionValidacion { get; set; }
        public string nombreArchivo { get; set; }
        public string tipoValidacion { get; set; }
        public string fechaHoravalidacion { get; set; }

        public  DatosValidacion(){
            idValidacion = 0;
            lineaArchivo = 0; 
            descricionValidacion = String.Empty;
            nombreArchivo = String.Empty;
            tipoValidacion = String.Empty;
            fechaHoravalidacion = String.Empty;
        }
    }

}

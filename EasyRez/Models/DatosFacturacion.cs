using System.ComponentModel.DataAnnotations;

namespace EasyRez.Models
{
    public class DatosFacturacion
    {
        
        public int IdDatoFacturacion { get; set; }
        [Range(1, int.MaxValue, ErrorMessage = "Debes de seleccionar una opcion.")]
        public int TipoPersona { get; set; }

        [Required(ErrorMessage = "Campo RFC es requerido."), MaxLength(13)]
        public string? RFC { get; set; }
        [Required(ErrorMessage = "El campo razon social es requerido."), MaxLength(250, ErrorMessage ="Se supero el maximo de caracteres permitidos")]
        public string? RazonSocial { get; set; }
        [Required(ErrorMessage = "Campo correo es requerido."), MaxLength(80, ErrorMessage ="Se superó el maximo de caracteres permitidos")]
        public string? Correo { get; set; }
        public int MetodoPago { get; set; }
        [Range(1, int.MaxValue, ErrorMessage = "Debes de seleccionar una opcion.")]

        public int UsoCFDI { get; set; }
        [Range(1, int.MaxValue, ErrorMessage = "Debes de seleccionar una opcion.")]
        public int RegimenFiscal { get; set; }
        public int IdDireccion { get; set; }
        public bool EsSucursal { get; set; }
        [Range(1, int.MaxValue, ErrorMessage = "Debes de seleccionar una opcion.")]
        public int TipoEntidadTributaria { get; set; }
        public int IdEntidadTributaria { get; set; }

        [Display(Name = "Metodo Pago")]
        public string? StrMetodoPago { get; set; }
        [Display(Name = "Uso CFDI Clave")]
        public string? StrUsoCFDIClave { get; set; }
        [Display(Name = "Uso CFDI Descripcion")]
        public string? StrUsoCFDIDescripcion { get; set; }
        [Display(Name = "Tipo Persona")]
        public string? StrTipoPersona { get; set; }
        [Display(Name = "Regimen Fiscal Clave")]
        public string? StrRegimenFiscalClave { get; set; }
        [Display(Name = "Regimen Fiscal Descripción")]
        public string? StrRegimenFiscalDescripcion { get; set; }

        public DatosFacturacion()
        {
            IdDatoFacturacion = 0;
            StrMetodoPago = String.Empty;
            StrUsoCFDIClave = String.Empty;
            StrUsoCFDIDescripcion = String.Empty;
            StrTipoPersona = String.Empty;
            StrRegimenFiscalClave = String.Empty;
            StrRegimenFiscalDescripcion = String.Empty;
        }
    }
}

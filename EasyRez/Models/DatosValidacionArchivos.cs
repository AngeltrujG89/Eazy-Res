using System.Data;
using System.Data.SqlClient;
using Microsoft.JSInterop;

namespace EasyRez.Models
{
    public class DatosValidacionArchivos
    {
        string connectionString = "Data Source=ANGEL\\SQLEXPRESS;Initial Catalog=EasyRez;User ID=latg8;Password='';Application Name=EasyRez; Trusted_Connection=True;MultipleActiveResultSets=true";


        public IEnumerable<DatosValidacion> GetAllDatosValidacion()
        {
            List<DatosValidacion> lstDatosValidacion = new List<DatosValidacion>();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spObtenerDatosValidacion", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();

                while (sdr.Read())
                {
                    DatosValidacion datosValidacion = new DatosValidacion();
                    datosValidacion.idValidacion = Convert.ToInt32(sdr["idLog"]);
                }

                con.Close();
                return lstDatosValidacion;
            }
        }
        [JSInvokable]
        public async Task AgregarDatosValidacionLog()
        {

        }
    }
}

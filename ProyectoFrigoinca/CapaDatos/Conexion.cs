using System;
using System.Collections.Generic;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class Conexion
    {
        // Patrón de Diseño Singleton
        // Creación de una única instancia de la clase Conexion
        private static readonly Conexion _instancia = new Conexion();
        // Propiedad que devuelve la única instancia de la clase Conexion
        public static Conexion Instancia
        {
            get { return Conexion._instancia; }
        }

        public SqlConnection Conectar()
        {
            SqlConnection cn = new SqlConnection();

            //servidor
            //cn.ConnectionString = "Server=tcp:servidor-adrian.database.windows.net,1433;Initial Catalog=Frigoinca;Persist Security Info=False;User ID=adriansql;Password=Adrian270404;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            
            
            //local
            //cn.ConnectionString = "Data Source=DESKTOP-NTP0JLO;Initial Catalog=proyectoFrigoinca;Integrated Security=True";

            return cn;
        }
    }
}

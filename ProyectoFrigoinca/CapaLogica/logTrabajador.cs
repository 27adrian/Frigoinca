using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logTrabajador
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logTrabajador _instancia = new logTrabajador();
        //privado para evitar la instanciación directa
        public static logTrabajador Instancia
        {
            get
            {
                return logTrabajador._instancia;
            }
        }
        #endregion singleton
        #region sigleton

        //listar
        public List<entTrabajador> ListarTrabajador()
        {
            return datTrabajador.Instancia.ListarTrabajador();
        }
        //agregar
        public bool InsertarTrabajador(entTrabajador trabajador)
        {
            return datTrabajador.Instancia.InsertarTrabajador(trabajador);
        }
        //edita
        public void EditarTrabajador(entTrabajador Trab)
        {
            datTrabajador.Instancia.Editartrabajador(Trab);
        }

        // Método para eliminar un trabajador
        public Boolean EliminarTrabajador(long idTrab)
        {
            return datTrabajador.Instancia.EliminarTrabajador(idTrab);
        }
        //Metodo para buscar Trabajador por Rol,Nombre,fecha de registro, dni
        public List<entTrabajador> BuscarTrabajadores(entTrabajador Trab)
        {
            int? idRol = Trab.idRol;
            int? numDoc = Trab.numDoc;
            string nombTrab = Trab.nombTrab;
            DateTime? fechaRegistro = Trab.fechaRegistro;

            // Verifica si los valores son nulos y ajusta en consecuencia
            if (idRol == 0) idRol = null; // Si idRol es 0, se convierte en nulo
            if (numDoc == 0) numDoc = null;
            if (string.IsNullOrEmpty(nombTrab)) nombTrab = null; // Si nombTrab es nulo o una cadena vacía, se convierte en nulo

            // Verifica si fechaRegistro tiene un valor y está dentro del rango permitido
            DateTime? fechaRegistroParam = null;
            if (fechaRegistro != null && (fechaRegistro.Value >= SqlDateTime.MinValue.Value && fechaRegistro.Value <= SqlDateTime.MaxValue.Value))
            {
                fechaRegistroParam = fechaRegistro;
            }

            // Llama al método en la capa de datos
            return datTrabajador.Instancia.BuscarTrabajadores(idRol, nombTrab, fechaRegistroParam, numDoc);
        }
        #endregion singleton

        public string ObtenerRol(string nombreUsuario, string contraseña)
        {
            using (SqlConnection connection = Conexion.Instancia.Conectar())
            {
                connection.Open();
                // Consulta SQL que obtiene el rol del usuario con el nombre y la contraseña proporcionados,
                // y que además verifica si el usuario está habilitado (estado = true)
                string query = "SELECT R.descripcion " +
                               "FROM TRABAJADOR T " +
                               "INNER JOIN ROL R ON T.idRol = R.idRol " +
                               "WHERE T.Usuario = @usuario " +
                               "AND T.Contraseña = @contraseña " +
                               "AND T.estado = 1"; // Asumiendo que 1 representa habilitado

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@usuario", nombreUsuario);
                    command.Parameters.AddWithValue("@contraseña", contraseña);

                    var result = command.ExecuteScalar();
                    connection.Close();

                    if (result != null)
                    {
                        return result.ToString(); // Devuelve el rol del usuario
                    }
                    else
                    {
                        return null; // Credenciales incorrectas o usuario deshabilitado
                    }
                }
            }
        }
        public bool UsuarioEstaHabilitado(string nombreUsuario)
        {
            using (SqlConnection connection = Conexion.Instancia.Conectar())
            {
                connection.Open();
                string query = "SELECT estado FROM TRABAJADOR WHERE Usuario = @usuario";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@usuario", nombreUsuario);
                    var estado = (bool?)command.ExecuteScalar();
                    connection.Close();

                    return estado.HasValue && estado.Value; // Devuelve true si el estado es true (habilitado), false de lo contrario
                }
            }
        }
    }

}

using DataPersistence;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Collections.Specialized.BitVector32;

namespace ApplicationService
{
    public class ProveedorAS
    {
        public int agregarProveedor(Proveedor proveedorNuevo)
        {
            // Validaciones de los datos que ingreso del cliente
            if (string.IsNullOrWhiteSpace(proveedorNuevo.ProveedorDNI.ToString()))
                throw new ArgumentException("El DNI del proveedor es obligatorio.");

            if (string.IsNullOrWhiteSpace(proveedorNuevo.ProveedorNombre))
                throw new ArgumentException("El nombre del proveedor es obligatorio.");

            if (string.IsNullOrWhiteSpace(proveedorNuevo.ProveedorApellido))
                throw new ArgumentException("El apellido del proveedor es obligatorio.");

            if (string.IsNullOrWhiteSpace(proveedorNuevo.ProveedorEmail))
                throw new ArgumentException("El email del proveedor es obligatorio.");

            if (string.IsNullOrWhiteSpace(proveedorNuevo.ProveedorDireccion))
                throw new ArgumentException("La dirección del proveedor es obligatoria.");

            if (string.IsNullOrWhiteSpace(proveedorNuevo.ProveedorCiudad))
                throw new ArgumentException("La ciudad del proveedor es obligatoria.");

            if (string.IsNullOrWhiteSpace(proveedorNuevo.ProveedorCP.ToString()))
                throw new ArgumentException("El código postal del proveedor es obligatorio.");


            DataAccess conexion = new DataAccess();
            DataManipulator query = new DataManipulator();

            try
            {
                // Configuro query de inserción y recuperación del ID insertado
                query.configSqlQuery("INSERT INTO PROVEEDORES ( Documento, Nombre, Apellido, Email, Direccion, Ciudad, CP) VALUES( @DNICliente, @nombreCliente, @ApellidoCliente, @EmailCliente, @DireccionCliente, @CiudadCliente, @CPCliente); SELECT SCOPE_IDENTITY();");

                // Configuro conexión a DB
                query.configSqlConexion(conexion.obtenerConexion());

                // Abro la conexión
                conexion.abrirConexion();

                // Parámetros de la query
                query.configSqlParams("@DNIProveedor", proveedorNuevo.ProveedorDNI);
                query.configSqlParams("@nombreProveedor", proveedorNuevo.ProveedorNombre);
                query.configSqlParams("@apellidoProveedor", proveedorNuevo.ProveedorApellido);
                query.configSqlParams("@EmailProveedor", proveedorNuevo.ProveedorEmail);
                query.configSqlParams("@DireccionProveedor", proveedorNuevo.ProveedorDireccion);
                query.configSqlParams("@CiudadProveedor", proveedorNuevo.ProveedorCiudad);
                query.configSqlParams("@CPProveedor", proveedorNuevo.ProveedorCP);

                // Ejecutar la query y obtener el ID generado
                int idGenerado = Convert.ToInt32(query.ejecutarEscalar());

                return idGenerado;

            }
            catch (Exception ex)
            {
                throw new Exception("Error al insertar el proveedor en la base de datos", ex);
            }
            finally
            {
                // Cierro la conexión
                conexion.cerrarConexion();
            }
            return -1; // si falló el insert
        }





        //*******************************************************************************************************
        public Proveedor ObtenerProveedorPorDNI(int dni)
        {
            DataAccess conexion = new DataAccess();
            DataManipulator query = new DataManipulator();

            try
            {
                // Configuro query de selección
                query.configSqlQuery("SELECT * FROM PROVEEDORES WHERE Documento = @DNIProveedor");
                query.configSqlConexion(conexion.obtenerConexion());
                conexion.abrirConexion();

                query.configSqlParams("@DNIProveedor", dni);

                // Ejecutar la query y obtener el cliente
                using (var reader = query.ejecutarConsulta())
                {
                    if (reader.Read())
                    {
                        return new Proveedor
                        {
                            ProveedorDNI = Convert.ToInt32(reader["Documento"]),
                            ProveedorNombre = reader["Nombre"].ToString(),
                            ProveedorApellido = reader["Apellido"].ToString(),
                            ProveedorEmail = reader["Email"].ToString(),
                            ProveedorDireccion = reader["Direccion"].ToString(),
                            ProveedorCiudad = reader["Ciudad"].ToString(),
                            ProveedorCP = Convert.ToInt32(reader["CP"])
                        };
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener el proveedor de la base de datos", ex);
            }
            finally
            {
                conexion.cerrarConexion();
            }

            return null; // Si no se encuentra el proveedor
        }


        //*******************************************************************************************************
    }


}

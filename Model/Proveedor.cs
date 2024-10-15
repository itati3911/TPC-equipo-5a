using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Proveedor
    {
        public int ProveedorId { get; set; }

        public int ProveedorDNI { get; set; }

        public string ProveedorNombre { get; set; }

        public string ProveedorApellido { get; set; }

        public string ProveedorEmail { get; set; }

        public string ProveedorDireccion { get; set; }

        public string ProveedorCiudad { get; set; }

        public int ProveedorCP { get; set; }

        public Proveedor() { }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entDetalleAnimal
    {
        public int idDetAmim { get; set; }
        public int idAnimal { get; set; }
        public int idCorteAnim { get; set; }
    }

    public class enDetalleAnimalInfo
    {
        public int idDetAmim { get; set; }
        public string especie { get; set; }
        public string descCorteAnim { get; set; }
    }
}

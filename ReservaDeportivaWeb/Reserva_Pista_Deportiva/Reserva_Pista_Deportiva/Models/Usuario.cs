using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Reserva_Pista_Deportiva.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string NombreUsuario { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string Password { get; set; }
        public Boolean EsAdministrador { get; set; }
    }
}
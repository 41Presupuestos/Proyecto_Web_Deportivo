using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Reserva_Pista_Deportiva.Models
{
    public class Cliente
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Movil { get; set; }
        public string Email { get; set; }
        public Boolean Sexo { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public Usuario Usuario { get; set; }
    }
}
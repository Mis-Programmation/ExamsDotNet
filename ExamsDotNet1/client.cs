//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExamsDotNet1
{
    using System;
    using System.Collections.Generic;
    
    public partial class client
    {
        public int id { get; set; }
        public string code { get; set; }
        public string prenom { get; set; }
        public string nom { get; set; }
        public string tel { get; set; }
        public string adresse { get; set; }
        public string email { get; set; }
        public int idCategories { get; set; }
    
        public virtual categorie categorie { get; set; }
    }
}

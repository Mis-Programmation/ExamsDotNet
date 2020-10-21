using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamsDotNet1.Servcice
{
    class CustomerImp : CustomerInterface
    {
        private DBContext db = null;
        public CustomerImp()
        {
            db = new DBContext();
        }


        public List<categorie> findAllCategories()
        {
            return db.categorie.ToList();
        }

        public List<client> findAllCustomers()
        {
            return db.client.ToList();
        }

        public client save(client client)
        {
            db.client.Add(client);
            db.SaveChanges();
            return client;
        }
    }
}

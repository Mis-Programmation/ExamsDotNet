using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamsDotNet1.Servcice
{
    interface CustomerInterface
    {

        client save(client client);
        List<client> findAllCustomers();


        List<categorie> findAllCategories();
    }
}

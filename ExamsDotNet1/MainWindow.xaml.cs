using ExamsDotNet1.Servcice;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ExamsDotNet1
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private CustomerInterface CustomerInterface;
        public MainWindow()
        {
            InitializeComponent();

            CustomerInterface = new CustomerImp();
            tableDTG.ItemsSource = CustomerInterface.findAllCustomers();
            combox.ItemsSource = CustomerInterface.findAllCategories();
            combox.DisplayMemberPath = "libelle";
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            String codeThis = code.Text.Trim();
            String firtNameThis = firstName.Text.Trim();
            String lastnameThis = lastName.Text.Trim();
            String emailThis = email.Text.Trim();
            String adressThis = adress.Text.Trim();
            String telThis = tel.Text.Trim();
            Double telDouble;

            if (!verify())
            {
                return;
            }

            try
            {
                telDouble = double.Parse(telThis);
            }
            catch (Exception)
            {
                MessageBox.Show("LE NUMERO N'EST PAS NUMERIQUE");
                return;
            }

            client client = new client();
            client.nom = firtNameThis;
            client.prenom = lastnameThis;
            client.adresse = adressThis;
            client.email = emailThis;
            client.code = codeThis;
            client.tel = telDouble+"";
            client.categorie = (categorie) combox.SelectedItem;
            save(client);
        }

        private void save(client client)
        {
            try
            {
                CustomerInterface.save(client);
                MessageBox.Show("Le client a bien ete ajouter");
                tableDTG.ItemsSource = CustomerInterface.findAllCustomers();
                clear();
            }
            catch (Exception)
            {
                MessageBox.Show("ERREUR D'ENREGISTREMENT");
                throw;
            }

        }


        private bool verify()
        {
            if (code.Text.Trim().Equals("")
                || firstName.Text.Trim().Equals("")
                || lastName.Text.Trim().Equals("")
                || email.Text.Trim().Equals("")
                || adress.Text.Trim().Equals("")
                || tel.Text.Trim().Equals("")
                || combox.SelectedIndex == -1
              )
            {
                MessageBox.Show("Tout les champs sont requis");
                return false;
            }

            return true;

        }


        private void clear()
        {
           code.Text = "";
           firstName.Text = "";
           lastName.Text = "";
           email.Text = "";
           adress.Text = "";
           tel.Text = "";
           combox.SelectedIndex = -1;
        }
        
    }
}

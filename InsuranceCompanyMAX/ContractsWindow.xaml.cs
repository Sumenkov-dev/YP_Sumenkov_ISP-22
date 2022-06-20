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
using System.Windows.Shapes;

namespace InsuranceCompanyMAX
{
    /// <summary>
    /// Interaction logic for ClientAcountsWindow.xaml
    /// </summary>
    public partial class ContractsWindow : Window
    {
        public ContractsWindow()
        {
            InitializeComponent();
            dgContracts.ItemsSource = InsuranceCompanyMAXEntities.GetContext().Contracts.ToList();
        }

        private void addBtn_Click(object sender, RoutedEventArgs e)
        {
            DobavlenieDogovoraWindow dobavitContact = new DobavlenieDogovoraWindow();
            dobavitContact.ShowDialog();

        }

        private void backBtn_Click(object sender, RoutedEventArgs e)
        {
            GlavnoeMenu glMenu = new GlavnoeMenu();
            glMenu.Show();
            clAccountsWindow.Close();
        }


    }
}

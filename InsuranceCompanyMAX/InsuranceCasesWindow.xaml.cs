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
    /// Interaction logic for OperationsWindow.xaml
    /// </summary>
    public partial class InsuranceCasesWindow : Window
    {
        public InsuranceCasesWindow()
        {
            InitializeComponent();
            dgOperations.ItemsSource = InsuranceCompanyMAXEntities.GetContext().InsuranceCases.ToList();
        }

        private void addBtn_Click(object sender, RoutedEventArgs e)
        {
            DobavlenieSluchaya dobavlenieSluchayaWindow = new DobavlenieSluchaya();
            dobavlenieSluchayaWindow.ShowDialog();
        }



        private void backBtn_Click(object sender, RoutedEventArgs e)
        {
            GlavnoeMenu glavnoeMenu = new GlavnoeMenu();
            glavnoeMenu.Show();
            operationsWindow.Close();
        }
    }
}

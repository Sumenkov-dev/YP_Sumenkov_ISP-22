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
    /// Interaction logic for DobavlenieCourseWindow.xaml
    /// </summary>
    public partial class DobavlenieDogovoraWindow : Window
    {
        private Contract _contract = new Contract();

        public DobavlenieDogovoraWindow()
        {
            InitializeComponent();
            _contract.date = DateTime.Now;
            DataContext = _contract;
            casesCombo.ItemsSource = InsuranceCompanyMAXEntities.GetContext().InsuranceCases.ToList();
            clientCombo.ItemsSource = InsuranceCompanyMAXEntities.GetContext().Clients.ToList();
        }

        private void cancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (_contract.Agent == null)
                errors.AppendLine("Выберете Агента");
            if (_contract.InsuranceCase == null)
                errors.AppendLine("Выберете страховой случай");
            if (_contract.Client == null)
                errors.AppendLine("Выберете клиента");
            if(_contract.years == 0)
                errors.AppendLine("Укажите срок страховки");
            if (_contract.sum == "0,0000")
                errors.AppendLine("Сумма некоректна");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_contract.id == 0)
            {
                InsuranceCompanyMAXEntities.GetContext().Contracts.Add(_contract);
            }
            try
            {
                InsuranceCompanyMAXEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена!");
                dobavitCourseWindow.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }

        }



        private void casesCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var currentAgent = InsuranceCompanyMAXEntities.GetContext().Agents.ToList();
            var  currentCases = InsuranceCompanyMAXEntities.GetContext().InsuranceCases.ToList();

            currentAgent = currentAgent.Where(p => p.InsuranceTypeID.Equals(_contract.InsuranceCase.InsuranceTypeID)).ToList();
            agentCombo.IsEnabled = true;
            agentCombo.ItemsSource = currentAgent;
            UpdateSum();

        }


        private void sumBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }

        private void yearsBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }

        private void UpdateSum()
        {
            if (_contract.InsuranceCase != null)
            {
                _contract.sum = Convert.ToString(_contract.InsuranceCase.costInYear * Convert.ToInt32(yearsBox.Text));
                sumBox.Text = _contract.sum.ToString();
            }
        }
        private void yearsBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateSum();
        }
    }
}

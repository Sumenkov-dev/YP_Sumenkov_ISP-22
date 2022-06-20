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
    /// Логика взаимодействия для DobavitAgentaWindow.xaml
    /// </summary>
    public partial class DobavitAgentaWindow : Window
    {
        private Agent _agent = new Agent();

        public DobavitAgentaWindow()
        {
            InitializeComponent();
            insuranceTypeCombo.ItemsSource = InsuranceCompanyMAXEntities.GetContext().TypeOfInsurances.ToList();
            _agent.dateOfEntry = DateTime.Now;
            DataContext = _agent;
        }

        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_agent.fio))
                errors.AppendLine("Укажите ФИО");
            if (_agent.TypeOfInsurance == null)
                errors.AppendLine("Выберете вид страхования");
            if (string.IsNullOrWhiteSpace(_agent.AgAddress))
                errors.AppendLine("Укажите телефон");
            if (string.IsNullOrWhiteSpace(_agent.SerNumPass))
                errors.AppendLine("Укажите ИНН");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_agent.id == 0)
            {
                InsuranceCompanyMAXEntities.GetContext().Agents.Add(_agent);
            }
            try
            {
                InsuranceCompanyMAXEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена!");
                dobavitAgentaWindow.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void cancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void passBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }
    }
}

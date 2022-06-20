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
    /// Interaction logic for DobavlenieOperationWindow.xaml
    /// </summary>
    public partial class DobavlenieSluchaya : Window
    {
        private InsuranceCase _insuranceCase = new InsuranceCase();   
        public DobavlenieSluchaya()
        {
            InitializeComponent();
            DataContext = _insuranceCase;
            typeCombo.ItemsSource = InsuranceCompanyMAXEntities.GetContext().TypeOfInsurances.ToList();

        }

        private void cancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_insuranceCase.Name))
                errors.AppendLine("Выберет счёт");
            if (typeCombo.Text == "")
                errors.AppendLine("Выберете тип операции");
            if (_insuranceCase.costInYear == 0)
                errors.AppendLine("Сумма должна быть больше 0р.");
            

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_insuranceCase.id == 0)
            {
                InsuranceCompanyMAXEntities.GetContext().InsuranceCases.Add(_insuranceCase);
            }
            try
            {
                InsuranceCompanyMAXEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена!");
                dobavitSluchaiWindow.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }


        private void costBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }

    }
}

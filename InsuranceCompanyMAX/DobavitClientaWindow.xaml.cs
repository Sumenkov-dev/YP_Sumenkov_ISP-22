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
    /// Interaction logic for DobavitClientaWindow.xaml
    /// </summary>
    public partial class DobavitClientaWindow : Window
    {
        private Client _client = new Client();

        public DobavitClientaWindow()
        {
            InitializeComponent();
            DataContext = _client;
        }

        private void cancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_client.Name))
                errors.AppendLine("Укажите ФИО");
            if (string.IsNullOrWhiteSpace(_client.ClAddress))
                errors.AppendLine("Укажите адрес");
            if (string.IsNullOrWhiteSpace(_client.telephone))
                errors.AppendLine("Укажите телефон");
            if (string.IsNullOrWhiteSpace(_client.inn))
                errors.AppendLine("Укажите ИНН");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_client.id == 0)
            {
                InsuranceCompanyMAXEntities.GetContext().Clients.Add(_client);
            }
            try
            {
                InsuranceCompanyMAXEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена!");
                dobavitClientaWindow.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void innBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }

        private void teleBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }
    }
    
}

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
    /// Interaction logic for CurrencyCoursesWindow.xaml
    /// </summary>
    public partial class AgentiWindow : Window
    {
        public AgentiWindow()
        {
            InitializeComponent();
            dgCourses.ItemsSource = InsuranceCompanyMAXEntities.GetContext().Agents.ToList();
        }

        private void addBtn_Click(object sender, RoutedEventArgs e)
        {
            DobavitAgentaWindow dobavitAgentaWindow = new DobavitAgentaWindow();
            dobavitAgentaWindow.ShowDialog();
        }

        private void backBtn_Click(object sender, RoutedEventArgs e)
        {
            GlavnoeMenu glMenu = new GlavnoeMenu();
            glMenu.Show();
            curCoursesWIndow.Close();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

namespace InsuranceCompanyMAX
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void buttonEnter_Click(object sender, RoutedEventArgs e)
        {
            string log = "user";
            string pass = "user";
            if (textBoxLogin.Text.Length > 0)
            {
                if (passBox.Password.Length > 0)
                {
                    if (textBoxLogin.Text == log && passBox.Password == pass) 
                    {
                        GlavnoeMenu glMenu = new GlavnoeMenu();
                        glMenu.Show();
                        mainWindow.Close();
                    }
                    else
                    {
                        MessageBox.Show("Неверно введен пароль или логин");
                    }
                }
                else
                {
                    MessageBox.Show("Не введен пароль!");

                }
            }
            else
            {
                MessageBox.Show("Не введен логин!");
            }            
        }
        

        private void logClearButt_Click(object sender, RoutedEventArgs e)
        {
            textBoxLogin.Clear();

        }

        private void showPass_Click(object sender, RoutedEventArgs e)
        {
            passBox2.Text = passBox.Password;
            passBox.Visibility = Visibility.Hidden;
            passBox2.Visibility = Visibility.Visible;
            showPassIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.EyeOff;
            Button btn = sender as Button;
            btn.Click -= new RoutedEventHandler(showPass_Click);
            btn.Click += new RoutedEventHandler(showPass_Click_1);
        }
        private void showPass_Click_1(object sender, RoutedEventArgs e)
        {

            passBox.Password = passBox2.Text;
            passBox.Visibility = Visibility.Visible;
            passBox2.Visibility = Visibility.Hidden;
            showPassIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Eye;
            Button btn = sender as Button;
            btn.Click -= new RoutedEventHandler(showPass_Click_1);
            btn.Click += new RoutedEventHandler(showPass_Click);
        }
    }
}

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

namespace RJD_IntangibleValuesAccounting.View
{
    /// <summary>
    /// Логика взаимодействия для AddBillWindow.xaml
    /// </summary>
    public partial class AddBillWindow : Window
    {
        private Bill _bill = new Bill();
        public AddBillWindow(Bill selectedBill)
        {
            InitializeComponent();
            if (selectedBill != null)
            {
                addBillWindow.Title = "РЖД - Изменение информации о счете";

                _bill = selectedBill;
            }
            else
            {
                addBillWindow.Title = "РЖД - Добавление счета";


            }
            DataContext = _bill;
            
        }

        private void cancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_bill.BillName))
                errors.AppendLine("Заполните название");
            if (string.IsNullOrWhiteSpace(_bill.BillHolder))
                errors.AppendLine("Заполните поле владельца");
            if (string.IsNullOrWhiteSpace(_bill.BillNumber))
                errors.AppendLine("Заполните расчетный счет");
            if (string.IsNullOrWhiteSpace(_bill.BillBIK))
                errors.AppendLine("Заполните БИК");
            if (string.IsNullOrWhiteSpace(_bill.BillINN))
                errors.AppendLine("Заполните ИНН");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_bill.BillID == 0)
            {
                IntangibleAssetsDBEntities.GetContext().Bills.Add(_bill);
            }
            try
            {
                IntangibleAssetsDBEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                addBillWindow.Close();
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

        private void bikBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {

            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }

        private void billNumBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }
    }
}

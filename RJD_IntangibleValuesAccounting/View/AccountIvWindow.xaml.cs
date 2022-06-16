using Microsoft.Win32;
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
    /// Логика взаимодействия для AddActorWindow.xaml
    /// </summary>
    public partial class AccountIvWindow : Window
    {
        private AccountingIntangibleValue _accounting = new AccountingIntangibleValue();

        public AccountIvWindow(AccountingIntangibleValue SelectedAccounting, int _userID)
        {
            InitializeComponent();
            if (SelectedAccounting != null)
            {
                _accounting = SelectedAccounting;
                accountIvWindow.Title = "РЖД - Изменение записи о учете НМА";
            }
            else
            {
                _accounting.AccountingResponsible = _userID;
                accountIvWindow.Title = "РЖД - Принятие к учету НМА";
                _accounting.Date = DateTime.Now;
            }
            methodCombo.ItemsSource = IntangibleAssetsDBEntities.GetContext().MethodDepreciations.ToList();
            valueCombo.ItemsSource = IntangibleAssetsDBEntities.GetContext().IntangibleValueReceipts.ToList();
            billCombo.ItemsSource = IntangibleAssetsDBEntities.GetContext().Bills.ToList();
            DataContext = _accounting;


        }

        private void addActorBorder_MouseLeftButtonDown_1(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (_accounting.IntangibleValueReceipt == null)
                errors.AppendLine("Выберете ценность");
            if (_accounting.MethodDepreciation == null)
                errors.AppendLine("Выберете способ начисления амортизации");
            if (_accounting.Bill == null)
                errors.AppendLine("Выберете счет амортизации");
            if (_accounting.UsefulLifeOfValue == 0)
                errors.AppendLine("Укажите срок полезного использования");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_accounting.AccountingID== 0)
            {
                IntangibleAssetsDBEntities.GetContext().AccountingIntangibleValues.Add(_accounting);
            }
            try
            {
                IntangibleAssetsDBEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                accountIvWindow.Close();
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

        private void usefullLifeBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {

        }
    }
}

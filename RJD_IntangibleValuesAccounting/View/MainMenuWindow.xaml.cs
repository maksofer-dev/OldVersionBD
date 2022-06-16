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
    /// Логика взаимодействия для MainMenuWindow.xaml
    /// </summary>
    public partial class MainMenuWindow : Window
    {
        int userID;
        int roleID;

        public MainMenuWindow(int _userID, int _roleID)
        {
            userID = _userID;
            roleID = _roleID;
            InitializeComponent();

        }

        private void closeBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
        private void exitBNn_Click(object sender, RoutedEventArgs e)
        {
            AuthorizationWindow authWindow = new AuthorizationWindow();
            authWindow.Show();
            mainMenuWindow.Close();
        }

        private void receiptIvBN_Click(object sender, RoutedEventArgs e)
        {

            ReceiptIvWindow receiptIvWindow = new ReceiptIvWindow(userID, roleID);
            receiptIvWindow.Show();
            mainMenuWindow.Close();
        }

        private void accountingIvBN_Click(object sender, RoutedEventArgs e)
        {
            AccountingIvWindow accountingIvWindow = new AccountingIvWindow(userID, roleID);

            accountingIvWindow.Show();
            mainMenuWindow.Close();
        }

        private void billsListBN_Click(object sender, RoutedEventArgs e)
        {
            BillsListWindow billsListWindow = new BillsListWindow(userID, roleID);
            billsListWindow.Show();
            mainMenuWindow.Close();
        }

        private void counterAgentBN_Click(object sender, RoutedEventArgs e)
        {
            CounterAgentListWindow counterAgentWindow = new CounterAgentListWindow(userID, roleID);
            counterAgentWindow.Show();
            mainMenuWindow.Close();
        }
    }
}

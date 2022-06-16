using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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
    /// Логика взаимодействия для ActorsWindow.xaml
    /// </summary>
    public partial class AccountingIvWindow : Window
    {
        int userID;
        int roleID;
        public AccountingIvWindow(int _userID, int _roleID)
        {
            InitializeComponent();
            userID = _userID;
            roleID = _roleID;
            switch (_roleID)
            {
                case 1:
                    buttsPanel.Visibility = Visibility.Visible;                    
                    break;
                case 2:
                    buttsPanel.Visibility = Visibility.Hidden;
                    editCell.Visibility = Visibility.Hidden;
                    break;
                case 3:
                    buttsPanel.Visibility = Visibility.Visible;                   
                    break;
            }
            dGridIvAccountingList.ItemsSource = IntangibleAssetsDBEntities.GetContext().AccountingIntangibleValues.ToList();

        }

        private void actorsBorder_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void closeBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        

        private void addBtn_Click(object sender, RoutedEventArgs e)
        {
            AccountIvWindow accountingIvWindow = new AccountIvWindow(null, roleID);
            accountingIvWindow.ShowDialog();
            
        }
        public static void CreateBitmapFromVisual(Visual target)
        {
            var bounds = VisualTreeHelper.GetDescendantBounds(target);
            var scaleX = PresentationSource.FromVisual(target).CompositionTarget.TransformToDevice.M11;
            var scaleY = PresentationSource.FromVisual(target).CompositionTarget.TransformToDevice.M22;
            var renderTarget = new RenderTargetBitmap(
                (int)(bounds.Width * scaleX),
                (int)(bounds.Height * scaleY),
                96 * scaleX,
                96 * scaleY,
                PixelFormats.Pbgra32);

            var visual = new DrawingVisual();

            using (var context = visual.RenderOpen())
            {
                var visualBrush = new VisualBrush(target);
                context.DrawRectangle(visualBrush, null, new Rect(new Point(), bounds.Size));
            }

            renderTarget.Render(visual);
            var bitmapEncoder = new BmpBitmapEncoder();
            bitmapEncoder.Frames.Add(BitmapFrame.Create(renderTarget));
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "Bitmap Image (.bmp)|*.bmp|JPEG Image (.jpeg)|*.jpeg|Png Image (.png)|*.png";

            if (saveFileDialog.ShowDialog() == true)
            {
                string FileName = saveFileDialog.FileName;
                using (var stm = File.Create(FileName))
                    bitmapEncoder.Save(stm);

            }

        }
        private void delBtn_Click(object sender, RoutedEventArgs e)
        {
            var accountForRemoving = dGridIvAccountingList.SelectedItems.Cast<AccountingIntangibleValue>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие {accountForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    IntangibleAssetsDBEntities.GetContext().AccountingIntangibleValues.RemoveRange(accountForRemoving);
                    IntangibleAssetsDBEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");
                    dGridIvAccountingList.ItemsSource = IntangibleAssetsDBEntities.GetContext().AccountingIntangibleValues.ToList();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void refreshBtn_Click(object sender, RoutedEventArgs e)
        {
            IntangibleAssetsDBEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            dGridIvAccountingList.ItemsSource = IntangibleAssetsDBEntities.GetContext().AccountingIntangibleValues.ToList();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            AccountIvWindow accountIvWindow = new AccountIvWindow((sender as Button).DataContext as AccountingIntangibleValue, userID);
            accountIvWindow.ShowDialog();
        }

        private void backBN_Click(object sender, RoutedEventArgs e)
        {
            MainMenuWindow mainMenu = new MainMenuWindow(userID, roleID);
            mainMenu.Show();
            accountingIvWindow.Close();
            
        }

        private void screenBN_Click(object sender, RoutedEventArgs e)
        {
            CreateBitmapFromVisual(dGridIvAccountingList);
        }
    }
}

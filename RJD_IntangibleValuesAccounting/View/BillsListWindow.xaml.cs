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
    /// Логика взаимодействия для DisciplineWindow.xaml
    /// </summary>
    public partial class BillsListWindow : Window
    {
        int userID;
        int roleID;
        public BillsListWindow(int _userID, int _roleID)
        {
            InitializeComponent();
            userID = _userID;
            roleID = _roleID;
            switch (roleID)
            {
                case 1:
                    buttPanel.Visibility = Visibility.Visible;
                    break;
                case 2:
                    buttPanel.Visibility = Visibility.Hidden;
                    editCell.Visibility = Visibility.Hidden;

                    break;
                case 3:
                    buttPanel.Visibility = Visibility.Visible;
                    break;
            }
            dGridBills.ItemsSource = IntangibleAssetsDBEntities.GetContext().Bills.ToList();

        }

        private void refreshBtn_Click(object sender, RoutedEventArgs e)
        {
            IntangibleAssetsDBEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            dGridBills.ItemsSource = IntangibleAssetsDBEntities.GetContext().Bills.ToList();
        }

        private void delBtn_Click(object sender, RoutedEventArgs e)
        {
            var billsForRemoving = dGridBills.SelectedItems.Cast<Bill>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие {billsForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    IntangibleAssetsDBEntities.GetContext().Bills.RemoveRange(billsForRemoving);
                    IntangibleAssetsDBEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");
                    dGridBills.ItemsSource = IntangibleAssetsDBEntities.GetContext().Bills.ToList();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }



        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            AddBillWindow addBillWindow = new AddBillWindow((sender as Button).DataContext as Bill);
            addBillWindow.ShowDialog();
        }



        private void addBtn_Click(object sender, RoutedEventArgs e)
        {
            AddBillWindow addBillWindow = new AddBillWindow(null);
            addBillWindow.ShowDialog();
        }

        private void backBN_Click(object sender, RoutedEventArgs e)
        {
            MainMenuWindow mainMenu = new MainMenuWindow(userID, roleID);
            mainMenu.Show();
            billsListWindow.Close();
        }

        public static void CreateScreenShotFromVisual(Visual target)
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
        private void screenBN_Click(object sender, RoutedEventArgs e)
        {
            CreateScreenShotFromVisual(dGridBills);
        }
    }
}

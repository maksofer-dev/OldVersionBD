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
    /// Логика взаимодействия для AddSpectacleWindow.xaml
    /// </summary>
    public partial class AddValueWindow : Window
    {
        private IntangibleValueReceipt _Value = new IntangibleValueReceipt();
        public AddValueWindow(IntangibleValueReceipt selectedValue)
        {

            InitializeComponent();
            if(selectedValue != null)
            {
                _Value = selectedValue;
                addValueWindow.Title = "РЖД - Изменение записи НМА";
                //imgActor.Source = new BitmapImage(new Uri(_contract.Image));
            }
            else
            {
                _Value.ValueDateFrom = DateTime.Now;
                addValueWindow.Title = "РЖД - Поступление НМА(Создание)";


            }

            DataContext = _Value;
            receiptMethodCombo.ItemsSource = IntangibleAssetsDBEntities.GetContext().MethodOfReceipts.ToList();
            typeCombo.ItemsSource = IntangibleAssetsDBEntities.GetContext().Types.ToList();
            counterAgentCombo.ItemsSource = IntangibleAssetsDBEntities.GetContext().CounterAgents.ToList();
            depreciationCombo.ItemsSource = IntangibleAssetsDBEntities.GetContext().DepreciationGroups.ToList();



        }

        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_Value.ValueFullName))
                errors.AppendLine("Не введено полное название ");
            if (string.IsNullOrWhiteSpace(_Value.ValueShortName))
                errors.AppendLine("Не введено короткое название");
            if (_Value.Type == null)
                errors.AppendLine("Выберете вид");
            if (_Value.MethodOfReceipt == null)
                errors.AppendLine("Выберете способ получения");
            if (_Value.CounterAgent == null)
                errors.AppendLine("Выберете контрагента");
            if (string.IsNullOrWhiteSpace(_Value.ValueCost) || Convert.ToInt32(_Value.ValueCost) == 0 || Convert.ToInt32(_Value.ValueCost) < 0)
                errors.AppendLine("Стоимость пуста или введена некорректно");
            if (Convert.ToInt32(_Value.ValueNDSPercent) == 0 || Convert.ToInt32(_Value.ValueNDSPercent) < 0)
                errors.AppendLine("Некорректно введен НДС");
            if (string.IsNullOrWhiteSpace(_Value.ValueCostWithNDS))
                errors.AppendLine("Не расчитана стоимость с учетом НДС");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if(_Value.ValueID == 0)
            {
                IntangibleAssetsDBEntities.GetContext().IntangibleValueReceipts.Add(_Value);
            }
            try
            {
                IntangibleAssetsDBEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                addValueWindow.Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void addImaage_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openDialog = new OpenFileDialog();
            openDialog.Filter = "Image files (*.BMP, *.JPG, *.GIF, *.TIF, *.PNG, *.ICO, *.EMF, *.WMF)|*.bmp;*.jpg;*.gif; *.tif; *.png; *.ico; *.emf; *.wmf";

            if (openDialog.ShowDialog() == true)
            {

                valueIMG.Source = new BitmapImage(new Uri(openDialog.FileName));

            }
        }

        private void calcBN_Click(object sender, RoutedEventArgs e)
        {
            if(costBox.Text != "")
            {
                calcBox.Text = Convert.ToString(Convert.ToInt32(costBox.Text) + Convert.ToInt32(costBox.Text) * Convert.ToInt32(ndsBox.Text) / 100);
               _Value.ValueCostWithNDS = (calcBox.Text);

            }
            else
            {
                MessageBox.Show("Не введена стоимость");
            }

        }

        private void cancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void costBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }

        private void ndsBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")))
                e.Handled = true;
        }
    }
}

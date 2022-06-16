using System;
using System.Collections.Generic;
using System.Data;
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
using System.Windows.Threading;
using RJD_IntangibleValuesAccounting.models;
using RJD_IntangibleValuesAccounting.View;

namespace RJD_IntangibleValuesAccounting
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationWindow.xaml
    /// </summary>
    public partial class AuthorizationWindow : Window
    {

        int userID;
        int roleID;
        public DispatcherTimer timer = new DispatcherTimer();

        int interv = 10;
        public AuthorizationWindow()
        {
            InitializeComponent();
            timer.Interval = new TimeSpan(0, 0, 1);
            timer.Tick += СapchaеTimer;
        }

        private void AuthorizationBorder_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }
        void CaptchaGenerator()  // метод генерации капчи 
        {
            if(captchaBorder.Visibility == Visibility.Hidden)
            {
                captchaBorder.Visibility = Visibility.Visible;
                Grid.SetRow(logButton, 3);
                Grid.SetRow(regPanel, 4);

            }
            char[] chars = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789".ToCharArray();
            string randomString = "";
            Random ran = new Random();
            for (int i = 0; i < 5; i++)
            {
                randomString += chars[ran.Next(0, chars.Length)];
            }
            genCaptchaBox.Content = randomString;
        }
        public void СapchaеTimer(object sender, EventArgs e)
        {
            interv--;
            if (interv == 0)
            {
                timer.Stop();
                interv = 10;
                if(userInfoPanel.Visibility == Visibility.Hidden)
                {
                    logPanel.Visibility = Visibility.Visible;
                    captchaSecBlock.Visibility = Visibility.Hidden;
                    captchaBox.Text = "";
                    CaptchaGenerator();
                }
                else
                {
                    MainMenuWindow mainWindow = new MainMenuWindow(userID, roleID);
                    mainWindow.Show();
                    authorizationWindow.Close();
                    
                }
            }
            captchaSecBlock.Text = Convert.ToString("Блокировка, осталось " +interv +" секунд!");
        }

        private void closeBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void LogButton_Click(object sender, RoutedEventArgs e)
        {
            var user = IntangibleAssetsDBEntities.GetContext().Users.ToList();
            var re = user.FirstOrDefault(x => logBox.Text.Equals(x.UserLogin) && passBox.Password.Equals(x.UserPassword));
            StringBuilder errors = new StringBuilder();
            if (logBox.Text == "")
                errors.AppendLine("Логин пустой");
            if (passBox.Password == "")
                errors.AppendLine("Пароль пустой");
            if (captchaBox.Text != Convert.ToString(genCaptchaBox.Content) && captchaBorder.Visibility == Visibility.Visible )
            {
                errors.AppendLine("Капча введена неверно");
                logPanel.Visibility = Visibility.Hidden;
                captchaSecBlock.Visibility = Visibility.Visible;
                timer.Start();
            }
            if (re == null)
            {
                if (captchaBorder.Visibility == Visibility.Visible && captchaBox.Text == Convert.ToString(genCaptchaBox.Content))
                {
                    logPanel.Visibility = Visibility.Hidden;
                    captchaSecBlock.Visibility = Visibility.Visible;
                    timer.Start();
                }                    
                else
                {
                    CaptchaGenerator();

                }
                errors.AppendLine("Логин или пароль неверный");
            }                                   
            if (errors.Length > 0)
            {
                MessageBox.Show(Convert.ToString(errors), "Предупреждение!", MessageBoxButton.OK, MessageBoxImage.Warning);

            }
            else
            {

                switch (re.UserRole)
                {
                    case 1:
                        positionBl.Text = "Главный бухгалтер";
                        break;
                    case 2:
                        positionBl.Text = "Бухгалтер";
                        break;
                    case 3:
                        positionBl.Text = "Администратор";
                        break;
                        
                }
                userIMG.Source = new BitmapImage(new Uri(re.UserPhoto));
                fullNameBl.Text = re.FullName;
                
                roleID = re.UserRole;
                userID = re.UserID;
                interv = 3;   
                logPanel.Visibility = Visibility.Hidden;
                userInfoPanel.Visibility = Visibility.Visible;
                timer.Start();                
            }           
        }

        private void logClearButt_Click(object sender, RoutedEventArgs e)
        {
            logBox.Clear();

        }
        private void helpButt_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show($"Для регистрации обратитесь к администратору", "Помощь",
                MessageBoxButton.OK, MessageBoxImage.Information);
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

        private void refreshCaptchaButton_Click(object sender, RoutedEventArgs e)
        {
            CaptchaGenerator();
        }
    }
}

using ClientApp.Commands;
using ClientApp.DataAccess;
using ClientApp.DataAccess.Repositories;
using ClientApp.Domain.Abstractions;
using ClientApp.Domain.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;



namespace ClientApp.Domain.ViewModels
{
    public class MainViewModel : BaseViewModel
    {
        // DataBase Access

        public readonly IAccountRepository _accountRepo;

        // Commands
        public RelayCommand CloseCommand { get; set; }
        public RelayCommand SignUpCommand { get; set; }
        public RelayCommand SignInCommand { get; set; }
        public RelayCommand MinimizeCommand { get; set; }
        public RelayCommand DisconnectedServerCommand { get; set; }



        // Element Binding
        private string _username;
        public string Username
        {
            get { return _username; }
            set { _username = value; OnPropertyChanged(); }
        }




        public MainViewModel()
        {
            _accountRepo = new AccountRepository();


            MinimizeCommand = new RelayCommand((o) =>
            {
                var w = o as Window;
                w.WindowState = WindowState.Minimized;
            });

            CloseCommand = new RelayCommand((o) =>
            {
                Application.Current.Shutdown();
            });


            SignInCommand = new RelayCommand((o) =>
            {
                var password = (o as PasswordBox).Password;

                var result = _accountRepo.CheckUsername(Username, password);
                MessageBox.Show(result.ToString());

                // Connected Server

            });


            SignUpCommand = new RelayCommand((o) =>
            {
                var window = new SignUpWindow();
                window.DataContext = new SignUpViewModel();
                window.ShowDialog();
            });


            DisconnectedServerCommand = new RelayCommand((o) =>
            {

            });
        }
    }
}

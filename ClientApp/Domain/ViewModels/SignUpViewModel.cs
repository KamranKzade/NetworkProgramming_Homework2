using System;
using System.Linq;
using System.Text;
using System.Windows;
using ClientApp.Commands;
using ClientApp.DataAccess;
using System.Windows.Controls;
using ClientApp.Domain.Abstractions;
using ClientApp.DataAccess.Repositories;

namespace ClientApp.Domain.ViewModels
{
    public class SignUpViewModel : BaseViewModel
    {
        #region Commands

        public RelayCommand CloseCommand { get; set; }
        public RelayCommand SignUpCommand { get; set; }
        public RelayCommand MinimizeCommand { get; set; }

        #endregion

        #region BindingWindowProperty

        private string _name;
        public string MyName
        {
            get { return _name; }
            set { _name = value; OnPropertyChanged(); }
        }


        private string _surname;
        public string MySurname
        {
            get { return _surname; }
            set { _surname = value; OnPropertyChanged(); }
        }


        private string _city;
        public string MyCity
        {
            get { return _city; }
            set { _city = value; OnPropertyChanged(); }
        }

        private string _state;
        public string MyState
        {
            get { return _state; }
            set { _state = value; OnPropertyChanged(); }
        }


        private string _email;
        public string MyEmail
        {
            get { return _email; }
            set { _email = value; OnPropertyChanged(); }
        }


        private DateTime _birthDay;
        public DateTime MyBirthDay
        {
            get { return _birthDay; }
            set { _birthDay = value; OnPropertyChanged(); }
        }


        private string _username;
        public string MyUsername
        {
            get { return _username; }
            set { _username = value; OnPropertyChanged(); }
        }

        #endregion

        #region DataAccess

        public readonly IAccountRepository _accountRepository;

        #endregion


        public SignUpViewModel()
        {
            _accountRepository = new AccountRepository();


            MinimizeCommand = new RelayCommand((o) =>
            {
                var w = o as Window;
                w.WindowState = WindowState.Minimized;
            });


            CloseCommand = new RelayCommand((o) =>
            {
                var w = o as Window;
                w.DialogResult = true;
            });


            SignUpCommand = new RelayCommand((o) =>
            {
                var Mypassword = (o as PasswordBox).Password;
                
                StringBuilder sb = new StringBuilder();

                if (string.IsNullOrWhiteSpace(Mypassword))
                    sb.Append("Password is empty\n");
                else if (string.IsNullOrWhiteSpace(MyName))
                    sb.Append("Name is empty\n");
                else if (string.IsNullOrWhiteSpace(MySurname))
                    sb.Append("Surname is empty\n");
                else if (string.IsNullOrWhiteSpace(MyCity))
                    sb.Append("City is empty\n");
                else if (string.IsNullOrWhiteSpace(MyState))
                    sb.Append("State is empty\n");
                else if (string.IsNullOrWhiteSpace(MyEmail))
                    sb.Append("Email is empty\n");
                else if (string.IsNullOrWhiteSpace(MyUsername))
                    sb.Append("Username is empty\n");
                else if (MyBirthDay == null)
                    sb.Append("No birthday selected\n");

                if (sb.Length > 0)
                    MessageBox.Show(sb.ToString(), "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                else
                {
                    var Myid = _accountRepository.GetAllData().Last().Id;
                    
                    Account account = new Account
                    {
                        Id = ++Myid,
                        Name = MyName,
                        Surname = MySurname,
                        City = MyCity,
                        State = MyState,
                        Birthday = MyBirthDay,
                        Email = MyEmail,
                        Username = MyUsername,
                        Password = Mypassword,
                    };
                    
                    try
                    {
                        _accountRepository.AddData(account);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($"{ex.Message}", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                    }

                    MessageBox.Show("Successfully Sign Up", "Information", MessageBoxButton.OK, MessageBoxImage.Information);

                    var window = ((((((o as PasswordBox).Parent as StackPanel).Parent as ScrollViewer).Parent as Grid).Parent as Border).Parent as Border).Parent as Window;
                    window.DialogResult = true;
                }
            });
        }
    }
}
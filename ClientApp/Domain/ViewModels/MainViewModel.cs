using ClientApp.Commands;
using ClientApp.DataAccess;
using ClientApp.DataAccess.Repositories;
using ClientApp.Domain.Abstractions;
using ClientApp.Domain.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.IO;

namespace ClientApp.Domain.ViewModels
{
    public class MainViewModel : BaseViewModel
    {
        #region DataAccess

        public readonly IAccountRepository _accountRepo;

        #endregion

        #region Commands

        public RelayCommand CloseCommand { get; set; }
        public RelayCommand SignUpCommand { get; set; }
        public RelayCommand SignInCommand { get; set; }
        public RelayCommand MinimizeCommand { get; set; }
        public RelayCommand DisconnectedServerCommand { get; set; }

        #endregion

        #region ElementBinding

        private string _username;
        public string Username
        {
            get { return _username; }
            set { _username = value; OnPropertyChanged(); }
        }

        #endregion


        public TcpClient Client { get; set; }
        public IPAddress IPAddress { get; set; }
        public int Port { get; set; }
        public IPEndPoint EndPoint { get; set; }

        public MainViewModel()
        {
            _accountRepo = new AccountRepository();


            Client = new TcpClient();
            Port = 27001;
            IPAddress = IPAddress.Parse("192.168.1.16");
            EndPoint = new IPEndPoint(IPAddress, Port);



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

                if (result is true)
                {
                    var button = ((o as PasswordBox).Parent as StackPanel).Children[8] as Button;
                    button.Visibility = Visibility.Visible;
                    try
                    {
                        Client.Connect(EndPoint);

                        Task.Run(() =>
                        {
                            if (Client.Connected)
                            {
                                MessageBox.Show("Client Connected SERVER", "Information", MessageBoxButton.OK, MessageBoxImage.Information);

                                var writer = Task.Run(() =>
                                {
                                    var stream = Client.GetStream();
                                    var bw = new BinaryWriter(stream);
                                    bw.Write(Username);
                                });
                                Task.WaitAll(writer);
                            }
                        }).Wait(100);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($"{ex.Message}", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                    }
                }
                else
                    MessageBox.Show("Wrong Username Or Password", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);

            });


            SignUpCommand = new RelayCommand((o) =>
            {
                var window = new SignUpWindow();
                window.DataContext = new SignUpViewModel();
                window.ShowDialog();
            });


            DisconnectedServerCommand = new RelayCommand((o) =>
            {
                if (Client.Connected)
                {
                    Client.Close();
                    Client.Dispose();
                }
            });
        }
    }
}

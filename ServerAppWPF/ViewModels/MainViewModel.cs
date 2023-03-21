using System;
using System.IO;
using System.Net;
using System.Windows;
using System.Threading;
using System.Net.Sockets;
using System.Threading.Tasks;
using System.Collections.ObjectModel;


namespace ServerAppWPF.ViewModels
{
    public class MainViewModel : BaseViewModel
    {
        public static BinaryReader BR { get; set; } = null;
        public static TcpListener Listener { get; set; } = null;
        public static NetworkStream Stream { get; set; } = null;
        public static ObservableCollection<TcpClient> Clients { get; set; }
        public static ObservableCollection<string> MyListView { get; set; }


        public MainViewModel()
        {
            Clients = new ObservableCollection<TcpClient>();

            MyListView = new ObservableCollection<string>();


            var port = 27001;
            var ip = IPAddress.Parse("192.168.1.16");

            var ep = new IPEndPoint(ip, port);


            Listener = new TcpListener(ep);
            Listener.Start();

            MessageBox.Show($"Listening on {Listener.LocalEndpoint}", "Information", MessageBoxButton.OK, MessageBoxImage.Information);

            Thread thread = new Thread(() =>
            {
                while (true)
                {
                    var client = Listener.AcceptTcpClient();
                    Clients.Add(client);

                    var reader = Task.Run(() =>
                    {
                        foreach (var item in Clients)
                        {
                            Stream = null;
                            BR = null;
                            Task.Run(() =>
                            {
                                while (true)
                                {
                                    Stream = item.GetStream();
                                    BR = new BinaryReader(Stream);
                                   
                                    try
                                    {
                                        //if (item.Connected != true)
                                        //{
                                        //    Application.Current.Dispatcher.Invoke(new Action(() =>
                                        //    {
                                        //        Clients.Remove(item);
                                        //        item.Close();
                                        //        item.Dispose();
                                        //    }));
                                        //}

                                        var msg = BR.ReadString();

                                        Application.Current.Dispatcher.Invoke(new Action(() =>
                                        {
                                            MyListView.Add($"{msg}");
                                        }));



                                    }
                                    catch (System.IO.EndOfStreamException ex)
                                    {
                                        MessageBox.Show($"{ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                                        Application.Current.Dispatcher.Invoke(new Action(() =>
                                        {
                                            Clients.Remove(item);
                                        }));

                                        MessageBox.Show($"Error", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                                    }
                                }
                            }).Wait(5);
                        }
                    }).Wait(5);
                }
            });
            thread.Start();
        }
    }
}

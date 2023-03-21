using System;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace ServerApp
{
    public class Program
    {
        public static BinaryReader BR { get; set; } = null;
        public static List<TcpClient> Clients { get; set; }
        public static TcpListener Listener { get; set; } = null;




        static void Main(string[] args)
        {
            var port = 27001;
            Clients = new List<TcpClient>();
            var ip = IPAddress.Parse("192.168.1.16");

            var ep = new IPEndPoint(ip, port);


            Listener = new TcpListener(ep);
            Listener.Start();

            Console.WriteLine($"Listening on {Listener.LocalEndpoint}");


            while (true)
            {
                var client = Listener.AcceptTcpClient();
                Clients.Add(client);

                Task.Run(() =>
                {
                    var reader = Task.Run(() =>
                    {
                        foreach (var item in Clients)
                        {
                            Task.Run(() =>
                            {
                                var stream = item.GetStream();
                                BR = new BinaryReader(stream);

                                try
                                {
                                    var msg = BR.ReadString();
                                    if (client.Connected)
                                    {
                                        Console.ForegroundColor = ConsoleColor.Green;
                                        Console.WriteLine($"CLIENT : {msg} Connected Server");
                                        Console.ResetColor();
                                    }
                                    else
                                    {
                                        Console.ForegroundColor = ConsoleColor.Red;
                                        Console.WriteLine($"{item.Client.RemoteEndPoint}  disconnected");
                                        Console.ResetColor();
                                    }

                                }
                                catch (Exception ex)
                                {

                                    Clients.Remove(item);
                                }

                            });
                        }
                    });

                }).Wait(100);
            }
        }
    }
}

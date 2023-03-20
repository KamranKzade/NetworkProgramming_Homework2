using System.Windows;
using ClientApp.Domain.ViewModels;


namespace ClientApp
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            this.DataContext = new MainViewModel();

        }
    }
}

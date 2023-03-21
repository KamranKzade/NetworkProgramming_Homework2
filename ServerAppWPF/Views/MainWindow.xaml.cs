using System.Windows;
using ServerAppWPF.ViewModels;


namespace ServerAppWPF
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

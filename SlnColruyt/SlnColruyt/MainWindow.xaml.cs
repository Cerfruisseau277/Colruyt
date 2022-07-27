using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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

namespace SlnColruyt
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string Language = "NL";
        SolidColorBrush gris = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF343434"));

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Btn_NL_Click(object sender, RoutedEventArgs e)
        {
            Language = "NL";
            TaalKeuze(Language);
            Btn_NL.Background = gris;
        }

        private void Btn_FR_Click(object sender, RoutedEventArgs e)
        {
            Language = "FR";
            TaalKeuze(Language);
            Btn_FR.Background = gris;
        }

        private void Btn_EN_Click(object sender, RoutedEventArgs e)
        {
            Language = "EN";
            TaalKeuze(Language);
            Btn_EN.Background = gris;
        }

        public void TaalKeuze(string lang)
        {
            Btn_EN.Background = Brushes.White;
            Btn_FR.Background = Brushes.White;
            Btn_NL.Background = Brushes.White;

            switch (lang)
            {
                case "FR":
                    btnKlanten.Content = "Clients";
                    btnArtikels.Content = "Articles";
                    btnFacturen.Content = "Factures";
                    btnligging.Content = "Emplacments";
                    break;
                case "NL":
                    btnKlanten.Content = "Klanten";
                    btnArtikels.Content = "Artikles";
                    btnFacturen.Content = "Facturen";
                    btnligging.Content = "liggingen";
                    break;
                case "EN":
                    btnKlanten.Content = "Customers";
                    btnArtikels.Content = "Articles";
                    btnFacturen.Content = "Invoices";
                    btnligging.Content = "sites";
                    break;
            }

        }
    }
}

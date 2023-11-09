using KontrlWork.Classes;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace KontrlWork.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageOrder.xaml
    /// </summary>
    public partial class PageOrder : Page
    {
        private Order order_currentOrder = new Order();
        public PageOrder()
        {
            InitializeComponent();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (order_currentOrder.Id_employee == 0)
                //user8GlazkovaEntities.GetContext().order.Add(order_currentOrder);
            try
            {
                //user8GlazkovaEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                Classes.ClassFrame.frmObj.Navigate(new Pages.PageMain());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}

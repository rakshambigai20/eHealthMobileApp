using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eHealth.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SensorPage : ContentPage
    {
        public SensorPage()
        {
            InitializeComponent();
            BindingContext = new eHealth.ViewModels.SensorViewModel();
        }
    }
}
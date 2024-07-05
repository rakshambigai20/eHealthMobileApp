using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using eHealth.ViewModels;

namespace eHealth.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SensorPage : ContentPage
    {
        public SensorPage()
        {
            InitializeComponent();
            BindingContext = new SensorViewModel();
        }
    }
}

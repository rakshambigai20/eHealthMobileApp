﻿using eHealth.Models;
using eHealth.ViewModels;
using eHealth.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eHealth.Views
{
    public partial class UserPage : ContentPage
    {
        UserViewModel _viewModel;

        public UserPage()
        {
            InitializeComponent();

            BindingContext = _viewModel = new UserViewModel();
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            _viewModel.LoadUserCommand.Execute(null);
        }


    }
}
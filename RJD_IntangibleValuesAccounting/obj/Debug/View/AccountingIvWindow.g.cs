﻿#pragma checksum "..\..\..\View\AccountingIvWindow.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "31127814E59FD452C36C58E215ED8B32AD2A2885"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using RJD_IntangibleValuesAccounting.View;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace RJD_IntangibleValuesAccounting.View {
    
    
    /// <summary>
    /// AccountingIvWindow
    /// </summary>
    public partial class AccountingIvWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 1 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal RJD_IntangibleValuesAccounting.View.AccountingIvWindow accountingIvWindow;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border actorsBorder;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button backBN;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button screenBN;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel buttsPanel;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button addBtn;
        
        #line default
        #line hidden
        
        
        #line 57 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button delBtn;
        
        #line default
        #line hidden
        
        
        #line 74 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button refreshBtn;
        
        #line default
        #line hidden
        
        
        #line 93 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dGridIvAccountingList;
        
        #line default
        #line hidden
        
        
        #line 203 "..\..\..\View\AccountingIvWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGridTemplateColumn editCell;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/RJD_IntangibleValuesAccounting;component/view/accountingivwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\AccountingIvWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.accountingIvWindow = ((RJD_IntangibleValuesAccounting.View.AccountingIvWindow)(target));
            return;
            case 2:
            this.actorsBorder = ((System.Windows.Controls.Border)(target));
            
            #line 24 "..\..\..\View\AccountingIvWindow.xaml"
            this.actorsBorder.MouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.actorsBorder_MouseLeftButtonDown);
            
            #line default
            #line hidden
            return;
            case 3:
            this.backBN = ((System.Windows.Controls.Button)(target));
            
            #line 35 "..\..\..\View\AccountingIvWindow.xaml"
            this.backBN.Click += new System.Windows.RoutedEventHandler(this.backBN_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.screenBN = ((System.Windows.Controls.Button)(target));
            
            #line 36 "..\..\..\View\AccountingIvWindow.xaml"
            this.screenBN.Click += new System.Windows.RoutedEventHandler(this.screenBN_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.buttsPanel = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 6:
            this.addBtn = ((System.Windows.Controls.Button)(target));
            
            #line 49 "..\..\..\View\AccountingIvWindow.xaml"
            this.addBtn.Click += new System.Windows.RoutedEventHandler(this.addBtn_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.delBtn = ((System.Windows.Controls.Button)(target));
            
            #line 66 "..\..\..\View\AccountingIvWindow.xaml"
            this.delBtn.Click += new System.Windows.RoutedEventHandler(this.delBtn_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.refreshBtn = ((System.Windows.Controls.Button)(target));
            
            #line 83 "..\..\..\View\AccountingIvWindow.xaml"
            this.refreshBtn.Click += new System.Windows.RoutedEventHandler(this.refreshBtn_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.dGridIvAccountingList = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 10:
            this.editCell = ((System.Windows.Controls.DataGridTemplateColumn)(target));
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 11:
            
            #line 207 "..\..\..\View\AccountingIvWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.btnEdit_Click);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}


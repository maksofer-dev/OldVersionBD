   M S B A M L   `   `   `  ����Y  URJD_IntangibleValuesAccounting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:RJD_IntangibleValuesAccountingRJD_IntangibleValuesAccounting  5   	   8    2RJD_IntangibleValuesAccounting.AuthorizationWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   8local,clr-namespace:RJD_IntangibleValuesAccounting  5   	   -   5          �Name$  authorizationWindow��5   	    � Title$ 
MainWindow��5	   	   $	��670��6   $	��400��5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency . .��5      �� 
������� �� CornerRadius$ 10��6    ._�5   
   �  � RowDefinitions 5      �� 5      $��40 �6    �� 5      $	��210 �6    �� 5      $	��415 �6     � ColumnDefinitions 5      �� 5      �� 5      $	��320 �6#   �� 5      .+�5      �� -   5        	 ��Name$	 AuthorizationBorder��5      $��0��62   ���	#FFFA0706$ 	10,10,0,0��6V   $��3��5       5#      �� 5$      -   5        
 ��Name$
 closeBtn��5$      $��X��5%      $��20(�6!   $��3��5&      
�������   MouseOverLight#��[  5(       � Cursor$
 Hand��5)      5+      �� 5,      �� 5-      $��/images/RJD_Logo2.png��6   $��1��63   $��1��6C   $��0,0,0,0q�6P   $��Center=�6a   $��Center=�6~   $	��230��6�   �� 5/      -   5         ��Name$ captchaSecBlock��5/      $��Center=�61   $
��Wrap=�6N   $��Center=�6b   $�� ��6}   $��2��6�   $��1��6�   
���  ��$��30(�6�    �� TextAlignment$ Center=�6�   $��0,0,0,90q�6�   $	��250��6�   $y�Hidden=�6�   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6
  �� 50      -   5         ��Name$ userInfoPanel��50      $��2��60   $��1��6=   $��Center=�6M   $	��Top=�6j   $y�Hidden=�6�   .+�51      �� -   5         ��Name$ userIMG��51      $	��150��6)   $	��200��65   �� 52      -   5        $ 	welcBlock��52      $&�� Добро пожаловать!��6/   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6H   $
��Wrap=�6�   $��20(�6�   $ Center=�6�   $��0,10,0,0q�6�   $
��Bold"�6�   �� 53      -   5        $ 
fullNameBl��53      $�� ��60   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�68   $
��Wrap=�6�   $��20(�6�   $	��200��6�   $ Center=�6�   $��0,10,0,0q�6�   �� 55      -	   5        $ 
positionBl��55      $�� ��60   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�68   $��20(�6�   $	��200��6�   $ Center=�6�   $��0,10,0,0q�6�   $
��Wrap=�6�   57      �� 58      -
   5        $ logPanel��58      $��2��6+   $��1��68   $y�Visible=�6H   .+�5:      �� $
��Wrap=�6   $O��IПожалуйста, введите свой логин и пароль.��5;      $��20(�5<      $��0q�6&   $��Center=�61   $��Center=�6N   $	��280��6i   $ Center=�6u   
���   �$D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6�   $
��Bold"�6�   � 5=      $��0,0,0,0q�6    5>      �� 5?      $��65 �6(   �� 5@      $��65 �6(   �� 5A      $	��100 �6)   �� 5B      $��65 �6(   �� 5C      $��65 �6(   .+�5G      ��  �� Orientation$ 
Horizontal=�6!   $��Center=�6:   $��Center=�6W   $��0q�6r   $��0��6}   .+�5H      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Person=�62   $��5q�6@   $��30��6K   $��30��6V   ���	#FFFA07066b   �� 5J      -   5         ��Name$ logBox��5J   "   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин��62   $��Center=�6Y   $��40��6v   $��0q�6�    �� TextWrapping$
 Wrap=�6�   $�� ��6�   $��Center=�6�   $	��240��6�   $��24(�6�   
���   �$ Arrow��6�   $��Proxima Nova Rg)�6   $��Stretch=�6  $��Stretch=�6B  �� 5K      -   5        $
 logClearButt��5K   !   
������ $��30��5M      $��30��5N      
������ $
 Hand��5O   R     MouseOverTransperent#��[ 6`   .��5R        $ Clear=�66   ���#fa0706$��25��6Y   $��25��6d   $��Center=�6p   $��Center=�6�   5S      5T      �� 5U      -   5        $ passBox2��5U   F   $ Пароль��6   $��Center=�6X   $��10,0,0,0q�6u   $��Center=�6�   $��40��6�   $	��240��6�   $��24(�6�   
���   �$��1��6�   $y�Hidden=�6�   $ Arrow��6�   
������ $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6$  �� 5W      $ 
Horizontal=�6!   $��Center=�6:   $��Center=�6W   $��0q�6r   $��1��6}   .+�5X        $ Password=�62   $��5q�6B   $��30��6M   $��30��6X   ���	#FFFA07066e   G� 5Z      -   5         G�Name$ passBox��5Z   N   $ Пароль��6&   $��Center=�6_   $��0q�6|   $��Center=�6�   $��40��6�   $	��240��6�   $��24(�6�   
���   �$ Arrow��6�   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6�   $��Stretch=�66  $��Stretch=�6Y  �� 5[      -   5        $
 showPass��5[   !   
������ $��30��5]      $��30��5^      
������ $
 Hand��5_   N   #��[ 6\   .��5b        -   5          Name$ showPassIcon��5b   6   $	 Eye=�6L   ���	#FFFA0706$��25��6n   $��25��6y   $��Center=�6�   $��Center=�6�   5c      5f      �� 5h      -   5        $	 captchaBorder��5h      $ 10��64   $��2��6F   $	��200��6S   $��85��6_   $��0,0,0,5q�6k   $��Center=�6|    �� Padding$ 0q�6�   $y�Hidden=�6�   ���	#FFFA0706$��Center=�6�   ._�5j      �� .+�5k      �� $ 10��6%   
�������$��40��6J   $��5,5,5,0q�6V   ._�5l   "   �� -   5         ��Name$ genCaptchaBox��5l   (   $�� ��6?   $��24(�6J   $��Center=�6X   $��Segoe Script)�6|   $��0q�6�   ���	#FF272222$��Center=�6�   {�.  ��5m   &   �� 5n   *    �� ImageSource$. (\Images\zr-iqn7p3__aii2lfdqm5azi2ly.jpeg��65   5p   #   5q      �� 5r      $ 
Horizontal=�6)   $��Center=�6B   $��Center=�6_   $��0,3,0,0q�6z   .+�5s   "   �� -   5        $ 
captchaBox��5s   *   $ Введите капчу��6>   $��18(�6�   
�������$	��160��6�   $��0,0,0,0q�6�    �� TextAlignment$ Center=�6�   $��Center=�6�   $��Center=�6  $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�69   �� 
CaretBrush
 �   �$ Arrow��6�  ��6m   Z�  �� SelectionBrush 6�   Z� 6�  �� 5t   "   -   5        $
 refreshCaptchaButton��5t   )   
������ 
������ $
��32.4��5v   Z   ��5w   &   �� 5x   *    �� 
TargetType" ��60   .�5y   .   ��  �� Property � �� �� Value$ Fonts/#Dosis)�6W   �� 5z   .    � �� 6K   Z� �� 5{   .    �@�Cursor$
 Hand��6G     �� Triggers  5|   .   P� 5}   2   ! P� Property! �@J�IsMouseOver" P� Value" . . �5~   6   ��  � ��
 ���� 6S   5   3   5�   +   ��5�   &   �� 5�   *   # �� 
TargetType"# ��6:   .R�5�   .   �� $��25��65   $��25��6@   $ 27��5�   !   #��z��5�   !   ._�5�   2   �� $��Center=�6C   $��Center=�6^   5�   /   5�   +   .��5�   &     $ Refresh=�6>   
�������$��Center=�6`   $��Center=�6}   $
��32.4��6�   $
��32.4��6�   5�   #   5�      5�      5�      �� 5�      -   5        $
 	logButton��5�      $��
Войти��5�      $��Center=�5�      $��Center=�5�      $	��118��5�      $��42��5�      $��0q�5�      ���	#FFFA0706
�������$��2��5�      $
 Hand��6"   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�60   
�������$ � 	Resources$ 5�      ��%_   '��       �� 5�      " ��6$   .�5�   "   ��  �@��CornerRadius$ 20��6A   5�      5�      5�      �� 5�      -   5        $ regPanel��5�   !   $ 
Horizontal=�63   $��0,0,0,0q�6L   $��Center=�6]   $��3��6x   $��Center=�6�   .+�5�      �� $)��#Нет учетной записи?��6    $��Center=�6>   $��Center=�6[   ���	#FF1AB6E7$H��B/RJD_IntangibleValuesAccounting;component/Fonts/#RussianRail G Pro)�6�   
���   �6�   �� 5�      -   5        $
 helpButt��5�   !   $��Помощь��63   $��Center=�6D   $��Center=�6a   
������ 
������ ���	#FF1AB6E7$��30��6�   $��12(�6�   $
 Hand��6�   
���   �$D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6"  $
��Bold"�6n  5�      5�      5�      5�      5�      5�      
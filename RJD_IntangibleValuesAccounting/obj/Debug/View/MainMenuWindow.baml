   M S B A M L   `   `   `  ����Y  URJD_IntangibleValuesAccounting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:RJD_IntangibleValuesAccounting.View#RJD_IntangibleValuesAccounting.View  5   	   8    2RJD_IntangibleValuesAccounting.View.MainMenuWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   =local1clr-namespace:RJD_IntangibleValuesAccounting.View  5   	   -   5          �Name$  mainMenuWindow��5   	    � Title$&  РЖД - Главное меню��5	   	   $	��800��6$   $	��900��64   $	��900��6C   $
��1000��6S    � SizeToContent$ WidthAndHeight=�6c   
������� � WindowStartupLocation$ CenterScreen=�5   	   
���   �
���  ��.��5      � $��Stretch=�6   $��Stretch=�6)    � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      .+�5   
   �� 
���  ��6   � 5   
   $��1��6    5      �� 5      $	��200 �6!   �� 5      $	��230 �6!   �� 5      $	��230 �6     � ColumnDefinitions 5      �� 5      �� 5      �� 5       �� 5!      .+�5'      �� $��Center=�6   $��Center=�66   $��4��6Q    �� Orientation$ Vertical=�6e   .+�5)      �� $��/Images/1603629 (1).png��6   $��Center=�69   $��Center=�6V   $	��250��6q   �� 5*      $��4��6   ���	#FFFF0000$��Center=�6D   $��Center=�6a   ._�5+      �� -   5         ��Name$ glBox��5+       $H��B/RJD_IntangibleValuesAccounting;component/Fonts/#RussianRail G Pro)�6/   $��34(�6   $��Center=�6�   $��Center=�6�   $&�� Добро пожаловать!��6�   
�������6�   5-      5.      �� 5/      -   5         ��Name$ receiptIvBN��5/      $��1��6*   $��1��6:   $��0,0,0,0q�6G   $	��170��6X   $	��170��6d   	 � Cursor$
	 Hand��6�   ���	#FFFA0706$��Center=�6�   $��Bottom=�6�   ��6�   Z� .��50      �� $��Center=�6   $��Center=�6:   $ Vertical=�6U   .+�51      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 Receipt=�6.   $	��100��6=   $	��100��6I   $��Center=�6V   $��Center=�6s   
�������6�   �� 52      $#��Поступление НМА��6    $
��Wrap=�67    �� TextAlignment$ Center=�6K   $A��;RJD_IntangibleValuesAccounting;component/Fonts/#Gilroy Bold)�6b   
�������$��18(�6�   54      56      �� 57      -   5        $ accountingIvBN��57      $��2��6-   $��1��6=   $��0,0,0,0q�6J   $	��170��6[   $	��170��6g   $
	 Hand��6�   ���	#FFFA0706$��Bottom=�6�   ��6�   Z� .��58      �� .+�59        $
 ReceiptTextPlusOutline=�6.   $	��100��6M   $	��100��6Y   $��Center=�6f   $��Center=�6�   
�������$
	 Hand��6�   �� 5:      $+��%Принятие к учету НМА��6    $
��Wrap=�6<   $ Center=�6P   $A��;RJD_IntangibleValuesAccounting;component/Fonts/#Gilroy Bold)�6g   
�������$��18(�6�   $��0,5,0,0q�6�   5;      5<      �� 5=      -   5        $ billsListBN��5=      $��1��6*   $��2��6:   $��0,0,0,0q�6G   $	��170��6X   $	��170��6d   $
	 Hand��6�   ���	#FFFA0706$��Center=�6�   $��Center=�6�   ��6�   Z� .��5>      �� .+�5?        $
 AccountBalance=�6.   $	��100��6E   $	��100��6Q   $��Center=�6^   $��Center=�6{   
�������6�   �� 5@      $��
Счета��6    $
��Wrap=�6-   $ Center=�6A   $A��;RJD_IntangibleValuesAccounting;component/Fonts/#Gilroy Bold)�6X   
�������$��18(�6�   $��0,5,0,0q�6�   5A      5B      �� 5C      -   5        $ counterAgentBN��5C      $��2��6-   $��2��6=   $��0,0,0,0q�6J   $	��170��6[   $	��170��6g   $
	 Hand��6�   ���	#FFFA0706$��Center=�6�   $��Center=�6�   ��6�   Z� .��5D      �� .+�5E        $
 BusinessOutline=�6.   $	��100��6F   $	��100��6R   $��Center=�6_   $��Center=�6|   
�������6�   �� 5F      $��Контрагенты��6    $
��Wrap=�63   $ Center=�6G   $A��;RJD_IntangibleValuesAccounting;component/Fonts/#Gilroy Bold)�6^   
�������$��18(�6�   $��0,5,0,0q�6�   5G      5H      �� 5I      -   5        $ clockBl��5I      $��20(�6)   $��3��67   $	��Top=�6G   ���	#FFFA0706$H��B/RJD_IntangibleValuesAccounting;component/Fonts/#RussianRail G Pro)�6v   $��	0,10,15,0q�6�   $��Right=�6�   5J      �� 5K   
   -   5        $ exitBN��5K      $��Center=�5M      $��Bottom=�5N      $	��150��5O      $��50��5P      ���	#FFFA0706
�������$��24(�5S      $��2��5U      $
	 Hand��6"   $M��G/RJD_IntangibleValuesAccounting;component/Fonts/IBMPlexSans-Regular.ttf)�60   
�������$��4��6�   $��0,0,0,0q�6�   $��0,0,0,20q�6�   .��5V      �� $ 
Horizontal=�6   $��Center=�62   $��Center=�6O   $��0,0,5,0q�6j   .+�5W      �� $��
Выйти��6   $
��Wrap=�6)   $ Center=�6=   $A��;RJD_IntangibleValuesAccounting;component/Fonts/#Gilroy Bold)�6T   
�������$��18(�6�   $��30,0,0,0q�6�   $��Center=�6�   $��Center=�6�     5X      $
 	ExitToApp=�6*   $��30��6;   $��30��6F   $��10,0,0,0q�6R   5Z       � 	Resources 5[       �� 
TargetType �� Property �� Value��%_   '��       �� 5\      " ��6   .�5]      ��  �@��CornerRadius$ 20��65   5^      5_      5a      5b      5c      
   M S B A M L   `   `   `  ����Y  URJD_IntangibleValuesAccounting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:RJD_IntangibleValuesAccounting.View#RJD_IntangibleValuesAccounting.View  5   	   9    3RJD_IntangibleValuesAccounting.View.AccountIvWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   =local1clr-namespace:RJD_IntangibleValuesAccounting.View  5   	   -   5          �Name$  accountIvWindow��5   	    � Title$ AddActorWindow��5	   	   $	��520��6    $	��550��6-    � WindowStartupLocation$ CenterScreen=�69   
�������.��5
      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��70 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��90 �6    � ColumnDefinitions 5   
   �� 5      $	��25* �6   �� 5      $	��53* �6   �� 5      $	��15* �6   .+�5   
   �� $��Ценность: ��6   $��3��6&   $��Right=�64   $��Center=�6P   $��17(�6k   $��0,5,0,0q�6y   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   �� 5!   
   -   5         ��Name$ addActorBorder��5!      $��0��6)   $��3��66   ���	#FFFA0706._�5"      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Person=�6&   $��60��64   $��60��6?   $��Center=�6K   
�������$��Center=�6{   5%      �� 5&   
   -   5         ��Name$ 
valueCombo��5&   e    �� DisplayMemberPath$ ValueFullName��6C   $��3��6y   $��Center=�6�   $��15(�6�   $��30��6�   $��0,0,0,0q�6�   $
��AUTO��6�   
���   �	 � Cursor$
	 Hand��6�   $��1��6�   $��Center=�6
  $��Center=�6.  
 �� SelectedItem
 6   �� *IntangibleValueReceipt+6.  �� 5(   
   $?��9Способ начисления амортизации:��6   $��4��6:   $
��Wrap=�6G   $��0��6[   $��Stretch=�6k   $��Stretch=�6�   $��17(�6�   $��0,0,5,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�    �� TextAlignment$ Right=�6  �� 5*   
   $��
Дата: ��6   $��2��6"   $��0��6/   $��Right=�6?   $��Center=�6[   $��17(�6v   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   �� 5+   
   -   5        $ methodCombo��5+      $ 
MethodName��6T   $��4��6s   $��Stretch=�6�   $��Center=�6�   $��15(�6�   $��0,0,0,0q�6�   
���   �$��1��6�   $��Center=�6�   $��Center=�6  
 6(   �� *MethodDepreciation+6  (  "System.Windows.Controls.DatePicker  5/   
   $��2��63   $��Stretch=�6@   $��Center=�6^   $��15(�6y   $��0,0,0,0q�6�   
���   �$��1��6�   $��Center=�6�   $��Center=�6�      SelectedDate 6   �� *Date+6�   �� 50   
   $(��"Счет амортизации : ��6   $��5��6/   $��0��6<   $��Right=�6L   $��Center=�6h   $��16(�6�   $��0,0,0,5q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�   $ Right=�6	  �� 51   
   -   5        $ 	billCombo��51      $ BillName��6D   $��5��6a   $��Stretch=�6n   $��Center=�6�   $��15(�6�   
���   �$��1��6�   $��1��6�   $	 Arrow��6�   $��Center=�6�   $��Center=�6  
 6&   �� *Bill+6  �� 52   
    �� Orientation$ 
Horizontal=�6   $��7��6.   $��3��6;   $��Center=�6O   $��Center=�6j   $��0,0,0,1q�6�   .+�53      �� -   5         ��Name$ saveBtn��53      $��Сохранить��54      $
��Left=�55      $��Bottom=�56      $	��118��57      $��42��58      ���	#FFFA0706
�������$��6��5=      $
	 Hand��6"   $��Proxima Nova Rg)�60   $��0,0,25,0q�6M   $��1��6_   $��0,0,0,0q�6o   ��5;      Z�  � 	Resources 5>       �� 
TargetType �� Property �� Value��%_   '��       �� 5?      " ��6   .�5@      ��  �@��CornerRadius$ 20��69   5A      5B      5C      �� 5D      -   5        $ 	cancelBtn��5D      $��Отмена��5E      $��Right=�5F      $��Bottom=�5G      $	��118��5H      $��42��5I      ���	#FFFA0706
�������$��6��5N      $
	 Hand��6"   $��Proxima Nova Rg)�60   $��1��6M   $��0,0,0,0q�6]   ��5L      Z�  5O      ��%_   '��       �� 5P      " ��6   .�5Q      ��  �@��CornerRadius$ 20��69   5R      5S      5T      5U      �� 5V   
   $=��7Срок полезного использования:��6   $
��Wrap=�69   $��6��6M   $��Right=�6[   $��Center=�6w   $��17(�6�   $��0,0,5,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $ Right=�6  �� 5W   
   -   5         ��Name$ usefullLifeBox��5W   5   $��6��6M   $��Center=�6Z   $��15(�6u   $��30��6�   $
��AUTO��6�   
���   �$	 Arrow��6�   $��1��6�    �� TextAlignment$ Center=�6�   $��Center=�6�   $��Center=�6	  ��6   �� *UsefulLifeOfValue+6+  �� 5X   
   $��мес.��6   $
��Wrap=�6    $��6��64   $
��Left=�6B   $��Center=�6]   $��17(�6x   $��3��6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $ Right=�6�   5Z      5[      
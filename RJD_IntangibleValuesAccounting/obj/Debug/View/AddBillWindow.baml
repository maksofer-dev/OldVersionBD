   M S B A M L   `   `   `  ����Y  URJD_IntangibleValuesAccounting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:RJD_IntangibleValuesAccounting.View#RJD_IntangibleValuesAccounting.View  5   	   7    1RJD_IntangibleValuesAccounting.View.AddBillWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   =local1clr-namespace:RJD_IntangibleValuesAccounting.View  5   	   -   5          �Name$  addBillWindow��5   	    � Title$ РЖД��5	   	   $	��530��6   $	��550��6"    � WindowStartupLocation$ CenterScreen=�6.   
�������.��5
      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5       � ColumnDefinitions 5   
   �� 5      $	��25* �6   �� 5      $	��53* �6   �� 5      $	��15* �6   .+�5   
   �� $��Владелец: ��6   $��2��6&   $��Right=�64   $��Center=�6P   $��17(�6k   $��0,5,0,0q�6y   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   �� 5!   
   -   5         ��Name$ addActorBorder��5!      $��0��6)   $��3��66   ���	#FFFA0706 � Cursor$ Arrow��6a   ._�5"      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ AccountBalance=�6&   $��60��6<   $��60��6G   $��Center=�6S   $��Center=�6p   
�������6�   5$      �� 5%   
   -   5         ��Name$ 	holderBox��5%   .   $��2��6A   $��Center=�6N   $��15(�6i   $��30��6w   $��0,0,0,0q�6�   $
��AUTO��6�   
���   �$ Arrow��6�   $��1��6�   	 �� TextAlignment$	 Center=�6�   $��Center=�6�   $��Center=�6  ��6   �� *
BillHolder+6  �� 5'   
   $��Р/C : ��6   $��4��6"   $��0��6/   $��Right=�6?   $��Center=�6[   $��17(�6v   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   �� 5)   
   $��Название: ��6   $��3��6&   $��0��63   $��Right=�6C   $��Center=�6_   $��17(�6z   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   �� 5*   
   $��3��6,   $��Stretch=�69   $��Center=�6W   $��15(�6r   $��0,0,0,0q�6�   
���   �$��1��6�   $	 Center=�6�   $��Center=�6�   $��Center=�6�   ��6   �� *
BillName+6�   �� 5.   
   -   5        $ 
billNumBox��5.      $��4��6B   $��Stretch=�6O   $��Center=�6m   $��15(�6�   $��0,0,0,0q�6�   
���   �$��1��6�   $	 Center=�6�   
 �� 	MaxLength$
 20��6�   $��Center=�6�   $��Center=�6  $ Arrow��6e  ��6&   �� *
BillNumber+6e  �� 5/   
   $��	ИНН : ��6   $��5��6"   $��0��6/   $��Right=�6?   $��Center=�6[   $��16(�6v   $��0,0,0,5q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�    �� TextAlignment$ Right=�6�   �� 50   
   -   5        $ innBox��50      $��5��6;   $��Stretch=�6H   $��Center=�6f   $��15(�6�   
���   �$��1��6�   $��1��6�   $	 Center=�6�   $ Arrow��6  $
 12��6  $��Center=�6&  $��Center=�6J  ��6"   �� *	BillINN+6J  � 51   
   $��7��6   $��3��6    52      �� 53      �� 54      $	��298 �6#   �� 56      .+�59      �� -   5         ��Name$ saveBtn��59      $��Сохранить��5:      $
��Left=�5;      $��Center=�5<      $	��118��5=      $��42��5>      ���	#FFFA0706
�������$��6��5C      $
 Hand��6"   $��Proxima Nova Rg)�60   $��0,0,0,0q�6M   $��1��6^   ��5A      Z�  � 	Resources 5D       �� 
TargetType �� Property �� Value��%_   '��       �� 5E      " ��6   .�5F      ��  �@��CornerRadius$ 20��69   5G      5H      5I      �� 5J      -   5        $ 	cancelBtn��5J      $��Отмена��5K      $��Right=�5L      $��Center=�5M      $	��118��5N      $��42��5O      ���	#FFFA0706
�������$��6��5T      $
 Hand��6"   $��Proxima Nova Rg)�60   $��1��6M   $��0,0,0,0q�6]   ��5R      Z�  5U      ��%_   '��       �� 5V      " ��6   .�5W      ��  �@��CornerRadius$ 20��69   5X      5Y      5Z      5\      �� 5]   
   $��	БИК : ��6   $��6��6"   $��0��6/   $��Right=�6?   $	��Top=�6[   $��16(�6s   $��0,18,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�   $ Right=�6�   �� 5^   
   -   5        $ bikBox��5^      $��6��6;   $��Center=�6H   $��15(�6c   
���   �$��1��6�   $��1��6�   $	 Center=�6�   $ Arrow��6�   $
 9��6�   $��Center=�6  $��Center=�6+  ��6"   �� *	BillBIK+6+  5`      5a      
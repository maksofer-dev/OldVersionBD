   M S B A M L   `   `   `  ����Y  URJD_IntangibleValuesAccounting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:RJD_IntangibleValuesAccounting.View#RJD_IntangibleValuesAccounting.View  5   	   9    3RJD_IntangibleValuesAccounting.View.AddCounterAgent   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   =local1clr-namespace:RJD_IntangibleValuesAccounting.View  5   	   -   5          �Name$  addCounterAgent��5   	    � Title$ РЖД��5	   	   $	��380��6   $	��550��6"    � WindowStartupLocation$ CenterScreen=�6.   .��5
      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $
��143* �6    � ColumnDefinitions 5   
   �� 5      $	��25* �6   �� 5      $	��53* �6   �� 5      $	��15* �6   .+�5   
   �� $.��(Название организации:��6   $��2��61   $��Right=�6?   $��Center=�6[   $��17(�6v   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�    �� TextAlignment$ Right=�6�    �� Padding$ 0,0,5,0q�6  �� 5   
   -   5         ��Name$ addDisciplineBorder��5      $��0��6.   $��3��6;   ���	#FFFA0706 � Cursor$
 Hand��6g   ._�5      '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 BusinessOutline=�6&   $��60��6=   $��60��6H   $��Center=�6T   $��Center=�6q   
�������6�   5"      �� 5#   
   -   5        
 ��Name$
 nameBox��5#   4   $��2��6E   $��Center=�6R   $��15(�6m   $��30��6{   $��0,0,0,0q�6�   $
��AUTO��6�   
���   �$ Arrow��6�   $��1��6�    �� TextAlignment$ Center=�6�   ��6   �� *CounterAgentName+6�   �� 5%   
   $*��$Адресс организации:��6   $
��Wrap=�6/   $��4��6C   $��0��6P   $��Right=�6`   $��Center=�6|   $��17(�6�   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $ Right=�6	  $ 0,0,5,0q�6  �� 5&   
   -   5        $
 	holderBox��5&   6   $��3��6I   $��Center=�6V   $��15(�6q   $��30��6   $��0,0,0,0q�6�   $
��AUTO��6�   
���   �$ Arrow��6�   $��1��6�   $ Center=�6�   ��6   �� *CounterAgentHolder+6�   �� 5(   
   $��Владелец: ��6   $��3��6&   $��0��63   $��Right=�6C   $��Center=�6_   $��17(�6z   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   �� 5)   
   -   5        $
 addressOrgBox��5)   7   $��4��6N   $��Center=�6[   $��15(�6v   $��30��6�   $��0,0,0,0q�6�   $
��AUTO��6�   
���   �$ Arrow��6�   $��1��6�   $ Center=�6�   ��6   �� *CounterAgentAddress+6�   � 5.   
   $��6��6   $��3��6    5/      �� 50      �� 51      $	��298 �6#   �� 53      .+�56      �� -   5         ��Name$ saveBtn��56      $��Сохранить��57      $
��Left=�58      $��Bottom=�59      $	��118��5:      $��42��5;      ���	#FFFA0706
�������$��6��5@      $
 Hand��6"   $��Proxima Nova Rg)�60   $��0,0,0,10q�6M   $��1��6_   ��5>      Z�  � 	Resources 5A       �� 
TargetType �� Property �� Value��%_   '��       �� 5B      " ��6   .�5C      ��  �@��CornerRadius$ 20��69   5D      5E      5F      �� 5G      -   5        $ 	cancelBtn��5G      $��Отмена��5H      $��Right=�5I      $��Bottom=�5J      $	��118��5K      $��42��5L      ���	#FFFA0706
�������$��6��5Q      $
 Hand��6"   $��Proxima Nova Rg)�60   $��1��6M   $��0,0,0,10q�6]   ��5O      Z�  5R      ��%_   '��       �� 5S      " ��6   .�5T      ��  �@��CornerRadius$ 20��69   5U      5V      5W      5Y      5[      5\      
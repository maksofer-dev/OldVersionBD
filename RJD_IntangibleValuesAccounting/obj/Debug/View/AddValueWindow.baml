   M S B A M L   `   `   `  ����Y  URJD_IntangibleValuesAccounting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:RJD_IntangibleValuesAccounting.View#RJD_IntangibleValuesAccounting.View  5   	   8    2RJD_IntangibleValuesAccounting.View.AddValueWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   =local1clr-namespace:RJD_IntangibleValuesAccounting.View  5   	   -   5          �Name$  addValueWindow��5   	    � Title$ РЖД��5	   	   $	��950��6   $	��650��6"    � WindowStartupLocation$ CenterScreen=�6.    � 
ResizeMode$ NoResize=�6T   
�������.��5      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��80 �6   �� 5      $
��143* �6    � ColumnDefinitions 5"   
   �� 5#      $	��25* �6   �� 5$      $	��53* �6   �� 5&      $	��15* �6   .+�5(   
   �� $%��Полное название: ��6   $��2��6-   $��Right=�6;   $��Center=�6W   $��17(�6r   $��0,5,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   �� 5)   
   $'��!Краткое название: ��6   $��3��6.   $��Right=�6<   $��Center=�6X   $��17(�6s   $��0,5,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   �� 5*   
   -   5         ��Name$ valueShortBox��5*   2   $��3��6I   $��Center=�6V   $��15(�6q   $��30��6   $��0,0,0,0q�6�   $
��AUTO��6�   
���   � � Cursor$ Arrow��6�   $��1��6�    �� TextAlignment$ Center=�6�   $
��Left=�6�   $��Center=�6  ��6   �� *ValueShortName+6  �� 5,   
   -   5        	 ��Name$	 addContractBorder��5,      $��0��6,   $��3��69   ���	#FFFA0706$ Arrow��6e   ._�5-      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 Receipt=�6&   $��60��65   $��60��6@   $��Center=�6L   $��Center=�6i   
�������6�   5/      �� 50   
   -   5        $ valueFullNameBox��50   1   $��2��6K   $��Center=�6X   $��15(�6s   $��30��6�   $��0,0,0,0q�6�   $
��AUTO��6�   
���   �$ Arrow��6�   $��1��6�   ��6   �� *ValueFullName+6�   �� 52   
   $#��Дата получения: ��6   $��4��6,   $��0��69   $��Right=�6I   $��Center=�6e   $��17(�6�   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   (  "System.Windows.Controls.DatePicker  56   
   $��4��6<   $��Stretch=�6I   $��Center=�6g   $��15(�6�   $��0,0,0,0q�6�   
���   �$��1��6�      SelectedDate 6   �� *ValueDateFrom+6�   �� 57   
   $(��"Способ получения : ��6   $��6��6/   $��0��6<   $��Right=�6L   $��Center=�6h   $��16(�6�   $��0,0,0,5q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�    �� TextAlignment$ Right=�6	  �� 58   
   -   5         ��Name$ receiptMethodCombo��58       �� DisplayMemberPath$ 
MethodName��6X   $��6��6w   $��Stretch=�6�   $��Center=�6�   $��15(�6�   
���   �$��1��6�   $��1��6�   $
��Left=�6  $��Center=�6$   �� SelectedItem 6/   �� *MethodOfReceipt+6$  �� 59   
   $��Контрагент : ��6   $��7��6)   $��0��66   $��Right=�6F   $��Center=�6b   $��16(�6}   $��0,0,0,5q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�   $ Right=�6  �� 5:   
   -   5        $ counterAgentCombo��5:      $ CounterAgentName��6T   $��7��6y   $��Stretch=�6�   $��Center=�6�   $��15(�6�   
���   �$��1��6�   $��1��6�   $
��Left=�6  $��Center=�6&   6.   �� *CounterAgent+6&  �� 5;   
    �� Orientation$ 
Horizontal=�6   $��3��6.   $��9��6B   $��Center=�6O   $��Center=�6l   .+�5<      �� $��Цена : ��6   $��7��6'   $��0��64   $��Right=�6D   $��Center=�6`   $��16(�6{   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�   $ Right=�6  �� 5>      -   5        $ costBox��5>      $��15(�6'   $	��150��6P   $��Center=�6]   $��Center=�6�   $��0,0,0,0q�6�   $ Arrow��6�   ��65   �� *	ValueCost+6�   �� 5?      $��руб.��6   $��7��6$   $��0��61   $
��Left=�6A   $��Center=�6\   $��16(�6w   $��0,0,15,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�   $ Right=�6�   �� 5A      $��	НДС : ��6   $��7��6&   $��0��63   $��Right=�6C   $��Center=�6_   $��16(�6z   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�   $ Right=�6   �� 5C      -   5        $ ndsBox��5C      $��15(�6&   $��50��6U   $��Center=�6`   $��Center=�6�   $ Arrow��6�   ��64   �� *ValueNDSPercent+6�   �� 5D      $��%��6   $��7��6!   $��0��6.   $
��Left=�6>   $��Center=�6Y   $��16(�6t   $��0,0,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�   $ Right=�6�   5F      �� 5G   
   -	   5        $ calcBox��5G      $��15(�6#   $	��250��6S   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Цена с НДС��6_   $��Center=�6�   $��Center=�6�   $��0,0,0,0q�6�   $��10��6�   $��3��6�   $��Center=�6  $	��Top=�6!  {�.  $ Arrow��6K  ��61   �� *ValueCostWithNDS+6K  �� 5H   
   -
   5         ��Name$ calcBN��5H      $��Расчитать��6!   $8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6J   $
 Hand��6�   $��10��6�   ���	#FFFA0706$��Bottom=�6�   $��32��6�   
�������$��Center=�6  $��0,0,0,0q�6+  $	��100��6=  $��3��6I  ��6�   Z� 6I  � 5J   
   $��11��6   $��3��6    5K      �� 5L      �� 5M      $	��298 �6#   �� 5O      .+�5R      �� -   5        $ clipImageBN��5R      $#��Прикрепить фото��6*   $8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6\   $
 Hand��6�   $��6��6�   $��0,5,0,0q�6�   ���	#FFFA0706$��1��6�   $	��Top=�6�   $��32��6  
���������6  Z� 6*  �� 5S      -   5        $ saveBtn��5S      $��Сохранить��5T      $
��Left=�5U      $��Bottom=�5V      $	��118��5W      $��42��5X      ���	#FFFA0706
�������$��6��5]      $
 Hand��6"   $��Proxima Nova Rg)�60   $��0,0,0,25q�6M   $��1��6_   ��5[      Z�  � 	Resources 5^       �� 
TargetType �� Property �� Value��%_   '��       �� 5_      " ��6   .�5`      ��  �@��CornerRadius$ 20��69   5a      5b      5c      �� 5d      -   5        $ 	cancelBtn��5d      $��Отмена��5e      $��Right=�5f      $��Bottom=�5g      $	��118��5h      $��42��5i      ���	#FFFA0706
�������$��6��5n      $
 Hand��6"   $��Proxima Nova Rg)�60   $��1��6M   $��0,0,0,25q�6]   ��5l      Z�  5o      ��%_   '��       �� 5p      " ��6   .�5q      ��  �@��CornerRadius$ 20��69   5r      5s      5t      �� 5u      -   5         ��Name$ valueIMG��5u      $��1��6&   $��Stretch=�66   $��Stretch=�6T   $	��115��6p   $	��145��6|   $��0,0,0,20q�6�   $
��Fill=�6�   5w      �� 5x   
   $��Вид НМА : ��6   $��5��6&   $��0��63   $��Right=�6C   $	��Top=�6_   $��16(�6w   $��0,18,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�   $ Right=�6�   �� 5y   
   -   5        $ 	typeCombo��5y      $ TypeName��6D   $��5��6a   $��15(�6n   
���   �$��1��6�   $��1��6�   $
��Left=�6�   $��Center=�6�    6&   �� *Type+6�   �� 5z   
   $,��&Группа амортизации : ��6   $��8��61   $��0��6>   $��Right=�6N   $	��Top=�6j   $��16(�6�   $��0,18,0,0q�6�   
���   �$8��2/Theatre_Nemov_ISP_31;component/Fonts/#Gilroy Bold)�6�   $
��Wrap=�6�   $ Right=�6	  �� 5{   
   -   5        $ depreciationCombo��5{      $ 	GroupName��6Y   $��8��6w   $��15(�6�   
���   �$��1��6�   $��1��6�   $
��Left=�6�   $��Center=�6�    6.   �� *DepreciationGroup+6�   5}      5~      
   M S B A M L   `   `   `  ����Y  URJD_IntangibleValuesAccounting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:RJD_IntangibleValuesAccounting.View#RJD_IntangibleValuesAccounting.View  5   	   @    :RJD_IntangibleValuesAccounting.View.CounterAgentListWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   =local1clr-namespace:RJD_IntangibleValuesAccounting.View  5   	   -   5          �Name$  counterAgentWindow��5   	    � Title$ РЖД - Счета��5	   	   $	��600��6   $	��650��5
   	   $	��750��6   $	��800��6(    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � SizeToContent$ WidthAndHeight=�6.   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $��90 �6   �� 5      .+�5   
   �� -   5         ��Name$ disciplineBorder��5      ���	#FFFA0706$��2��6B    � Cursor$ Arrow��6W   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   $��Center=�6M   $
 Hand��6j   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 BusinessOutline=�6*   $��50��5   .   $��50��69   $��Center=�6E   $��Center=�6b   $��
0,0,19.7,0q�6}   
�������6�   �� 5      $��Контрагенты��6   $��25(�6/   $H��B/RJD_IntangibleValuesAccounting;component/Fonts/#RussianRail G Pro)�5       
�������$��Center=�5   3   $��Center=�6P   $
��Wrap=�6k   5      5       �� 5!   
   -   5        
 ��Name$
 screenBN��5!       � ToolTip$X RСделать скриншот текущего положения таблицы��6#   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6Y   $��40��6�   $��40��6�   $��1��6�   
����������	#FFFA0706$��Right=�6�   $��0,0,30,0q�6  $
 Hand��68  $��0,0,0,0q�6F  .��5"        $	 MonitorScreenshot=�6&   $��40��6?   $��40��6J   $��Stretch=�6V   $��Stretch=�6t   5#      �� 5%   
   -   5         ��Name$ 
buttsPanel��5%      $ 
Horizontal=�6)   $��Center=�6B   $��Center=�6_   $��1��6z   .+�5&      �� -   5        $
 addBtn��5&      $��Добавить��5'      $
��Left=�5(      $��Center=�5)      $	��100��5*      $��40��5+      ���	#FFFA0706
�������$��0��5/      $
 Hand��6"   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�60   $��0,0,0,0q�6�   ��6|   Z�  � 	Resources 50       �� 
TargetType �� Property �� Value��%_   '��       �� 51      " ��6   .�52      ��  �@��CornerRadius$ 20��69   53      54      55      �� 56      -   5        $
 delBtn��56      $��Удалить��57      $
��Left=�58      $��Center=�59      $	��100��5:      $��40��5;      ���	#FFFA0706
�������$��0��5@      $
 Hand��6"   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�60   $��50,0,0,0q�6|   ��5>      Z�  5A      ��%_   '��       �� 5B      " ��6   .�5C      ��  �@��CornerRadius$ 20��69   5D      5E      5F      �� 5G      -   5        $
 
refreshBtn��5G      $��Обновить��5H      $
��Left=�5I      $��Center=�5J      $	��100��5K      $��40��5L      ���	#FFFA0706
�������$��0��5Q      $
 Hand��6"   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�60   $��50,0,0,0q�6|   ��5O      Z�  5R      ��%_   '��       �� 5S      " ��6   .�5T      ��  �@��CornerRadius$ 20��69   5U      5V      5W      5Y      �� 5Z   
   -   5        $
 backBN��5Z      $��80��6!   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6,   $��40��6x   $��1��6�   
����������	#FFFA0706$��
Назад��6�   $
��Left=�6�   $��10,0,0,0q�6�   $
 Hand��6  $��0,0,0,0q�6  &   System.Windows.Controls.DataGrid  5\   
   -	   5          Name$ dGridAgents��5\      $��2��6(      AutoGenerateColumns .     
IsReadOnly . ���	#FFFA0706$D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6z      Columns 5^      0  *System.Windows.Controls.DataGridTextColumn  5`      ,  &System.Windows.Controls.DataGridColumn   Header$- 'Название организации��6&      Width5  /System.Windows.Controls.DataGridLengthConverter$	 200 6i   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *CounterAgentName+   HeaderStyle 5a      �� 5b      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    .�5c      ��  � ��$ Center=�6K   5d         ElementStyle 5f      �� 5g      .�5h      ��  � ��$
 Wrap=�6G   �� 5i       �@��TextAlignment$ Center=�6H   �� 5j       � ��$ Center=�6N   �� 5k       � ��$ Center=�6L   5n      5p        5q      $ Владелец��6&   $	 200 6_    68   �� *CounterAgentHolder+ 5r      �� 5s      "  6    .�5t      ��  � ��$ Center=�6K   5u       5w      �� 5x      .�5y      ��  � ��$
 Wrap=�6G   �� 5z       �@��TextAlignment$ Center=�6H   �� 5{       � ��$ Center=�6N   �� 5|       � ��$ Center=�6L   5      5�        5�      $) #Адресс организации��6&   $	 220 6B    6N   �� *CounterAgentAddress+ 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�      -
   5        editCell��   CellTemplate 5�      �� 5�      .R�5�      �� $
 btnEdit��6>   -   5        $ ��Редактировать��5�   &   $	��130��6e   $��Center=�6q   $
 Hand��6�   ���	#FFFA0706
�������6�   5�      5�      5�      5�      5�      
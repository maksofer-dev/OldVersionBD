   M S B A M L   `   `   `  ����Y  URJD_IntangibleValuesAccounting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:RJD_IntangibleValuesAccounting.View#RJD_IntangibleValuesAccounting.View  5   	   9    3RJD_IntangibleValuesAccounting.View.ReceiptIvWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   =local1clr-namespace:RJD_IntangibleValuesAccounting.View  5   	   -   5          �Name$  receiptIvWindow��5   	    � Title$, &РЖД - Поступление НМА��5	   	   $	��900��6'   $	��900��67   $
��1080��6F   $
��1920��6W    � SizeToContent$ WidthAndHeight=�6g   
������� � WindowStartupLocation$ CenterScreen=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��140 �6   �� 5      .+�5   
   �� -   5         ��Name$ spectaclesBorder��5      $��2��6,    � Cursor$ Arrow��6@   ���	#FFFA0706._�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   $��Center=�6M   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Receipt=�6*   $��50��5   .   $��50��69   $��Center=�6E   $��Center=�6b   $��
0,0,19.7,0q�6}   
�������6�   �� 5      $#��Поступление НМА��6   $��35(�63   $H��B/RJD_IntangibleValuesAccounting;component/Fonts/#RussianRail G Pro)�5       
�������$��Center=�5   3   $��Center=�6P   $
��Wrap=�6k   5      5      �� 5    
   -   5        	 ��Name$	 screenBN��5       
 � ToolTip$X
 RСделать скриншот текущего положения таблицы��6#   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6Y   $��40��6�   $��40��6�   $��1��6�   
����������	#FFFA0706$��Right=�6�   $��0,0,30,0q�6  $
 Hand��68  $��0,0,0,0q�6F  .��5!        $ MonitorScreenshot=�6&   $��40��6?   $��40��6J   $��Stretch=�6V   $��Stretch=�6t   5"      �� 5#   
   -   5         ��Name$ 	buttPanel��5#      $ 
Horizontal=�6(   $��Center=�6A   $��Center=�6^   $��1��6y   $��0,0,0,10q�6�   .+�5$      �� -   5        $	 addBtn��5$      $��Добавить��5%      $
��Left=�5&      $��Center=�5'      $	��118��5(      $��42��5)      ���	#FFFA0706
�������$��0��5.      $
 Hand��6"   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�60   ��5,      Z�  � 	Resources 5/       �� 
TargetType �� Property �� Value��%_   '��       �� 50      " ��6   .�51      ��  �@��CornerRadius$ 20��69   52      53      54      �� 55      -   5        $	 delBtn��55      $��Удалить��56      $
��Left=�57      $��Center=�58      $	��118��59      $��42��5:      ���	#FFFA0706
�������$��0��5?      $
 Hand��6"   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�60   $��50,0,0,0q�6|   ��5=      Z�  5@      ��%_   '��       �� 5A      " ��6   .�5B      ��  �@��CornerRadius$ 20��69   5C      5D      5E      �� 5F      -   5        $	 
refreshBtn��5F      $��Обновить��5G      $
��Left=�5H      $��Center=�5I      $	��118��5J      $��42��5K      ���	#FFFA0706
�������$��0��5P      $
 Hand��6"   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�60   $��50,0,0,0q�6|   ��5N      Z�  5Q      ��%_   '��       �� 5R      " ��6   .�5S      ��  �@��CornerRadius$ 20��69   5T      5U      5V      5X      �� 5Y   
   $ 
Horizontal=�6   $��1��6.   $��Bottom=�6;   $��Center=�6V   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$$ Выберете вид НМА��6s   $��0,0,0,15q�6�   .+�5Z      �� -   5         ��Name$ 	searchBox��5Z      $��17(�6)   $	��250��67   $��0,0,20,0q�6C   $ 
Поиск��6U   $��Center=�6|   $��Center=�6�   $ Arrow��6�   ���	#89DC6060$D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6  �� 5[      -	   5         ��Name$ typeNmaCombo��5[      $��17(�6-   $	��350��6;   $��Center=�6G   $��Center=�6k   ���	#89DC6060 �� DisplayMemberPath$ TypeName��6�   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6   �� SelectedItem 6�   �� *Type+6  5\      �� 5]   
   -
   5        $	 exitBN��5]      $	��100��6!   $��42��6-   $��1��69   
����������	#FFFA0706$��
Назад��6p   $
��Left=�6�   $��	50,0,0,10q�6�   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6�   &   System.Windows.Controls.DataGrid  5^   
   -   5          Name$ dGridReceiptNMA��5^      $��2��6,      AutoGenerateColumns .     
IsReadOnly . ���	#FFFA0706$��Stretch=�6~   $��Stretch=�6�   $��13(�6�   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6�      Columns 5`      0  *System.Windows.Controls.DataGridTextColumn  5a      ,  &System.Windows.Controls.DataGridColumn   Header$# Полное название��6&      Width5  /System.Windows.Controls.DataGridLengthConverter$	 200 6a   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *ValueFullName+   HeaderStyle 5b      �� 5c      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    .�5d      ��  � ��$ Center=�6K   5e         ElementStyle 5g      �� 5h      .�5i      ��  � ��$
 Wrap=�6G   �� 5j       �@��TextAlignment$ Center=�6H   �� 5k       � ��$ Center=�6N   �� 5l       � ��$ Center=�6L   5o      5q        5r      $' !Короткое название��6&   $	 140 6d    6A   �� *ValueShortName+ 5s      �� 5t      "  6    .�5u      ��  � ��$ Center=�6K   5v       5x      �� 5y      .�5z      ��  � ��$
 Wrap=�6G   �� 5{       �@��TextAlignment$ Center=�6H   �� 5|       � ��$ Center=�6N   �� 5}       � ��$ Center=�6L   5�      5�        5�      $ Стоимость��6&   $	 100 6p    69   �� *	ValueCost+ �� StringFormat$ {0} руб.�� 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      $ НДС��6&   $	 100 6o    63   �� *ValueNDSPercent+$ {0:N2}%�� 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      -   5        SumNDSColumn��$ 
Всего��5�   ;   $	 100 6�    6J   �� *ValueCostWithNDS+$ {0} руб.�� 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      $
 От��6&   $	 110 6m    62   �� *ValueDateFrom+$ 
dd-MM-yyyy�� 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      $ Вид НМА��6%   $	 150 6X    66   �� *Type.TypeName+ 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      $ Контрагент��6%   $	 170 6k    69   �� *CounterAgent.CounterAgentName+ 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      $% Способ получения��6%   $	 150 6n    6?   �� *MethodOfReceipt.MethodName+ 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      $) #Группа амортизации��6%   $	 150 6q    6A   �� *DepreciationGroup.GroupName+ 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5     �� 5     .�5     ��  � ��$
 Wrap=�6G   �� 5      �@��TextAlignment$ Center=�6H   �� 5      � ��$ Center=�6N   �� 5      � ��$ Center=�6L   5	     5     4	  .System.Windows.Controls.DataGridTemplateColumn	  5     -   5        editCell�� 	  CellTemplate 5     �� 5     .R�5     �� $	 btnEdit��6>   -   5        $ ��Редактировать��5  &   $	��130��6e   $��Center=�6q   $
 Hand��6�   ���	#FFFA0706
�������6�   5     5     5     5     5     
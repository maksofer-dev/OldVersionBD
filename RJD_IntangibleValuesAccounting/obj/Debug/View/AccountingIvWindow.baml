   M S B A M L   `   `   `  ����Y  URJD_IntangibleValuesAccounting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:RJD_IntangibleValuesAccounting.View#RJD_IntangibleValuesAccounting.View  5   	   <    6RJD_IntangibleValuesAccounting.View.AccountingIvWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   =local1clr-namespace:RJD_IntangibleValuesAccounting.View  5   	   -   5          �Name$  accountingIvWindow��5   	    � Title$4 .РЖД - Принятие к учету НМА��5	   	   $	��700��6,   $	��950��5
   	    � SizeToContent$ WidthAndHeight=�5   	   $	��800��5   	   $
��1080��5   	   
������� � WindowStartupLocation$ CenterScreen=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��100 �6   �� 5      .+�5   
   �� -   5         ��Name$ actorsBorder��5      ���	#FFFA0706$��2��6>    � Cursor$
 Hand��6�   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   $��Center=�6M   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ReceiptTextPlusOutline=�6*   $��50��5   .   $��50��69   $��Center=�6E   $��Center=�6b   $��
0,0,19.7,0q�6}   
�������6�   �� 5      $+��%Принятие к учету НМА��6   $��35(�68   $H��B/RJD_IntangibleValuesAccounting;component/Fonts/#RussianRail G Pro)�5       
�������$��Center=�5   3   $��Center=�6P   $
��Wrap=�6k   5       5!      �� 5#   
   -   5        	 ��Name$	 backBN��5#      $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6!   $	��100��6m   $��42��6y   $��1��6�   
����������	#FFFA0706$��
Назад��6�   $
��Left=�6�   $��30,0,0,0q�6�   $
 Hand��6  $��0,0,0,0q�6  �� 5$   
   -   5        $	 screenBN��5$      
 � ToolTip$X
 RСделать скриншот текущего положения таблицы��6#   $D��>/RJD_IntangibleValuesAccounting;component/Fonts/#IBM Plex Sans)�6Y   $��40��6�   $��40��6�   $��1��6�   
����������	#FFFA0706$��Right=�6�   $��0,0,30,0q�6  $
 Hand��68  $��0,0,0,0q�6F  .��5%        $ MonitorScreenshot=�6&   $��40��6?   $��40��6J   $��Stretch=�6V   $��Stretch=�6t   5&      �� 5(   
   -   5         ��Name$ 
buttsPanel��5(      $ 
Horizontal=�6)   $��Center=�6B   $��Center=�6_   $��1��6z   .+�5)      �� -   5        $	 addBtn��5)      $��Принять��5*      $
��Left=�5+      $��Center=�5,      $	��118��5-      $��42��5.      ���	#FFFA0706
�������$��0��52      $
 Hand��6"   $��Proxima Nova Rg)�60   ��6M   Z�  � 	Resources 53       �� 
TargetType �� Property �� Value��%_   '��       �� 54      " ��6   .�55      ��  �@��CornerRadius$ 20��69   56      57      58      �� 59      -   5        $	 delBtn��59      $��
Снять��5:      $
��Left=�5;      $��Center=�5<      $	��118��5=      $��42��5>      ���	#FFFA0706
�������$��0��5C      $
 Hand��6"   $��Proxima Nova Rg)�60   $��50,0,0,0q�6M   ��5A      Z�  5D      ��%_   '��       �� 5E      " ��6   .�5F      ��  �@��CornerRadius$ 20��69   5G      5H      5I      �� 5J      -   5        $	 
refreshBtn��5J      $��Обновить��5K      $
��Left=�5L      $��Center=�5M      $	��118��5N      $��42��5O      ���	#FFFA0706
�������$��0��5T      $
 Hand��6"   $��Proxima Nova Rg)�60   $��50,0,0,0q�6M   ��5R      Z�  5U      ��%_   '��       �� 5V      " ��6   .�5W      ��  �@��CornerRadius$ 20��69   5X      5Y      5Z      5\      &   System.Windows.Controls.DataGrid  5]   
   -	   5          Name$ dGridIvAccountingList��5]      $��2��62      AutoGenerateColumns .     
IsReadOnly . ���	#FFFA0706   Columns 5_      0  *System.Windows.Controls.DataGridTextColumn  5a      ,  &System.Windows.Controls.DataGridColumn   Header$ Ценность��6&      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 6q   1  +System.Windows.Controls.DataGridBoundColumn   Binding 68   �� *&$IntangibleValueReceipt.ValueFullName+   HeaderStyle 5b      �� 5c      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    .�5d      ��  � ��$ Center=�6K   5e         ElementStyle 5g      �� 5h      .�5i      ��  � ��$
 Wrap=�6G   �� 5j       �@��TextAlignment$ Center=�6H   �� 5k       � ��$ Center=�6N   �� 5l       � ��$ Center=�6L   5o      5q        5r      $ Дата учета��6&   $	 100 6l    6:   �� *Date+ �� StringFormat$ 
dd-MM-yyyy�� 5s      �� 5t      "  6    .�5u      ��  � ��$ Center=�6K   5v       5x      �� 5y      .�5z      ��  � ��$
 Wrap=�6G   �� 5{       �@��TextAlignment$ Center=�6H   �� 5|       � ��$ Center=�6N   �� 5}       � ��$ Center=�6L   5�      5�        5�      $> 8Способ начисления амортизации��6&   $	 210 6M    6Y   �� *MethodDepreciation.MethodName+ 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      $% Счет амортизации��6%   $	 120 6a    6?   �� *Bill.BillName+ 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      $1 +Полезное использование��6%   $	 165 6�    6E   �� *UsefulLifeOfValue+$ {0} мес.�� 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�        5�      $  Ответственный��6%   $	 150 6^    6<   �� *User.FullName+ 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�6K   5�       5�      �� 5�      .�5�      ��  � ��$
 Wrap=�6G   �� 5�       �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6N   �� 5�       � ��$ Center=�6L   5�      5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�      -
   5        editCell��   CellTemplate 5�      �� 5�      .R�5�      �� $	 btnEdit��6>   -   5        $ ��Редактировать��5�   &   $	��130��6e   $��Center=�6q   $
 Hand��6�   ���	#FFFA0706
�������6�   5�      5�      5�      5�      5�      
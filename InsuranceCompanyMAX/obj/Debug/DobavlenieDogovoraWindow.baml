   M S B A M L   `   `   `  ����N  JInsuranceCompanyMAX, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:InsuranceCompanyMAXInsuranceCompanyMAX  5   	   2    ,InsuranceCompanyMAX.DobavlenieDogovoraWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   -local!clr-namespace:InsuranceCompanyMAX  5   	   -   5          �Name$  dobavitCourseWindow��5   	    � Title$\ VСтраховая компания "МАКС" - Добавление договора��5	   	   $	��650��6L   $	��500��6Y    � WindowStartupLocation$ CenterScreen=�6e    � 
ResizeMode$ NoResize=�6�   .��5
      � ���	#FF003352.+�5   
   �� $	��600��6   
�������$	��450��61    �� Padding$ 30q�6@   ._�5      ��  �� Orientation$ Vertical=�6   $��Stretch=�61   $��Stretch=�6O   .+�5      �� $ 
Horizontal=�6   $��Center=�66   $��Center=�6S   .+�5      �� $
��Wrap=�6    $)��#Заполните все поля!��64   $��Center=�6O   $��Center=�6j   $��Proxima Nova Rg)�6�   $��24(�6�   $��0,0,0,0q�6�   5      (  "System.Windows.Controls.DatePicker  5      -   5          Name$ dateCoursePicker��5      $��Center=�67   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Дата��6z   $��Proxima Nova Rg)�6�   $��17(�6�   $��0,20,0,0q�6�   $��Center=�6�   $	��150��6�   $��43��6     SelectedDate 6[   �� *date+6  �� 5      -   5        	 ��Name$	 
casesCombo��5      
 �� DisplayMemberPath$

 Name��6V   $% Страховой случай��6o    &  "MaterialDesignFloatingHintComboBox#��[  6�   $��Proxima Nova Rg)�6�   $��Stretch=�6�   $��17(�6   � Cursor$ Arrow��6(  $��	0,20,0,20q�67   �� SelectedItem 6/   �� *InsuranceCase+6J  �� 5      -   5        $	 
agentCombo��5      $	
 fio��6N   $ 
Агент��6f   #��[  6�   $��Proxima Nova Rg)�6�   $��Stretch=�6�   $��17(�6  $ Arrow��6  {�.   6/   �� *Agent+6#  �� 5      -   5        $	 clientCombo��5      $

 Name��6P   $ Клиент��6i   #��[  6�   $��Proxima Nova Rg)�6�   $��Stretch=�6�   $��17(�6
  $ Arrow��6  $��0,20,0,0q�6'   60   �� *Client+6'  �� 5      -   5         ��Name$ yearsBox��5      $ Кол-во лет��6C    % !MaterialDesignFloatingHintTextBox#��[ 6o   $��Proxima Nova Rg)�6�   $��Stretch=�6�   $��17(�6�   $ Arrow��6�   $��0,20,0,0q�6  ��6,   �� *years+6C  �� 5      -   5        $ sumBox��5      $ 
Сумма��6?   #��[ 6f   $��Proxima Nova Rg)�6�   $��Stretch=�6�   $��17(�6�   $ Arrow��6�   $��0,20,0,0q�6�    �� 
IsReadOnly . ��6*   �� *sum+6  �� 5      $ 
Horizontal=�6   $��Center=�66   $��Center=�6S   $��0,55,0,0q�6n   .+�5      �� -   5         ��Name$ saveBtn��5      $��Сохранить��5      $
��Left=�5       $	��Top=�5!      $	��118��5"      $��42��5#      ���	#FF024884
�������
���   �$��1��5(      $
 Hand��6"   $;��5/InsuranceCompanyMAX;component/Fonts/#Source Sans Pro)�60   $��0,0,20,0q�6s   $��15(�6�    � 	Resources 5)       �� 
TargetType �� Property �� Value��%_   '��       �� 5*      " ��6$   .�5+   "   ��  �@��CornerRadius$ 20��6A   5,      5-      5.      �� 5/      -	   5        $ 	cancelBtn��5/      $��Отмена��50      $
��Left=�51      $	��Top=�52      $	��118��53      $��42��54      ���	#FF024884
�������
���   �$��1��59      $
 Hand��6"   $;��5/InsuranceCompanyMAX;component/Fonts/#Source Sans Pro)�60   $��15(�6s    5:      ��%_   '��       �� 5;      " ��6$   .�5<   "   ��  �@��CornerRadius$ 20��6A   5=      5>      5?      5@      5B      5D      5F      5G      
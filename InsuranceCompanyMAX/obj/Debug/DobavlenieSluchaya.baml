   M S B A M L   `   `   `  ����N  JInsuranceCompanyMAX, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:InsuranceCompanyMAXInsuranceCompanyMAX  5   	   ,    &InsuranceCompanyMAX.DobavlenieSluchaya   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   -local!clr-namespace:InsuranceCompanyMAX  5   	   -   5          �Name$  dobavitSluchaiWindow��5   	    � Title$m gСтраховая компания "МАКС" - Добавление страхового случая��5	   	   $	��450��6T   $	��500��6a    � WindowStartupLocation$ CenterScreen=�6m    � 
ResizeMode$ NoResize=�6�   .��5
      � ���	#FF003352.+�5   
   �� $	��400��6   
�������$	��450��61    �� Padding$ 30q�6@   ._�5      ��  �� Orientation$ Vertical=�6   $��Stretch=�61   $��Stretch=�6O   .+�5      �� $ 
Horizontal=�6   $��Center=�66   $��Center=�6S   $��0,20,0,0q�6n   .+�5      �� $
��Wrap=�6    $)��#Заполните все поля!��64   $��Center=�6O   $��Center=�6j   $��Proxima Nova Rg)�6�   $��24(�6�   $��0,0,0,0q�6�   5      �� 5      -   5         ��Name$ nameBox��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Название��6B    %  !MaterialDesignFloatingHintTextBox#��[  6l   $��Proxima Nova Rg)�6�   $��17(�6�   $��0,20,0,0q�6�    � Cursor$ Arrow��6�   ��6+   �� *Name+6�   �� 5      -   5        	 ��Name$	 	typeCombo��5      
 �� DisplayMemberPath$

 Name��6W   $# Вид страхования��6p    & "MaterialDesignFloatingHintComboBox#��[ 6�   $��Proxima Nova Rg)�6�   $��Stretch=�6�   $��17(�6  $ Arrow��6(  $��0,20,0,0q�67   �� SelectedItem 6.   �� *TypeOfInsurance+67  �� 5      -   5        $ costBox��5      $ Цена в год��6H   #��[  6t   $��Proxima Nova Rg)�6�   $��17(�6�   $��0,20,0,0q�6�   $ Arrow��6  ��6+   �� *
costInYear+6  �� 5      $ 
Horizontal=�6   $��Center=�66   $��Center=�6S   $��0,35,0,0q�6n   .+�5      �� -   5         ��Name$ saveBtn��5      $��Сохранить��5      $
��Left=�5      $	��Top=�5      $	��118��5      $��42��5      ���	#FF024884
�������
���   �$��1��5!      $
 Hand��6"   $;��5/InsuranceCompanyMAX;component/Fonts/#Source Sans Pro)�60   $��0,0,20,0q�6s   $��15(�6�    � 	Resources 5"       �� 
TargetType �� Property �� Value��%_   '��       �� 5#      " ��6$   .�5$   "   ��  �@��CornerRadius$ 20��6A   5%      5&      5'      �� 5(      -   5        $ 	cancelBtn��5(      $��Отмена��5)      $
��Left=�5*      $	��Top=�5+      $	��118��5,      $��42��5-      ���	#FF024884
�������
���   �$��1��52      $
 Hand��6"   $;��5/InsuranceCompanyMAX;component/Fonts/#Source Sans Pro)�60   $��15(�6s    53      ��%_   '��       �� 54      " ��6$   .�55   "   ��  �@��CornerRadius$ 20��6A   56      57      58      59      5;      5=      5>      5?      
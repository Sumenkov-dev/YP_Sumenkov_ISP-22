   M S B A M L   `   `   `  ����N  JInsuranceCompanyMAX, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:InsuranceCompanyMAXInsuranceCompanyMAX  5   	   )    #InsuranceCompanyMAX.ContractsWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   -local!clr-namespace:InsuranceCompanyMAX  5   	   -   5          �Name$  clAccountsWindow��5   	    � Title$G AСтраховая компания "МАКС" - Договора��5	   	   $	��800��6@   $
��1000��6M    � WindowStartupLocation$ CenterScreen=�6Z    � 
ResizeMode$ NoResize=�6   .��5
      � ���	#FF003352.+�5   
   �� 
�������$	��700��6$   $��Center=�61   $	��900��6L    �� Padding$ 15,15,15,15q�6[   ._�5      �  � RowDefinitions 5      �� 5      $��80 �6$   �� 5      .+�5      �� $��1277558722.png��6   $
��Left=�61   $��Stretch=�6L   $	��120��6h   �� 5      $��0��6   $��0��6*   $��Center=�6:   $��Center=�6W    �� Orientation$ 
Horizontal=�6r   .+�5      �� -   5         ��Name$ addBtn��5       � ToolTip$% Добавить договор��6-   $
��Left=�6I   $��Center=�6d   $��50��6   $��50��6�   
�������$��0��6�   	 � Cursor$
	 Hand��6�   $��Proxima Nova Rg)�6�      LigtCoursor#��[  6  $y�Hidden=�63  ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$

 Plus=�62   $��35��6>   $��35��6I   $��Center=�6U   $��Center=�6r   
�������6�   5      5      �� 5      -   5        $ backBtn��5      $��
Выход��6*   $��0,0,0,10q�6:   $��Right=�6L   $��Center=�6h   #��[  6�   
�������$;��5/InsuranceCompanyMAX;component/Fonts/#Source Sans Pro)�6�   $��50��6�   $
��Bold"�6   $
	 Hand��62  $��77��6@  &   System.Windows.Controls.DataGrid  5      -   5          Name$ dgContracts��5      $��1��60      AutoGenerateColumns .     
IsReadOnly . $;��5/InsuranceCompanyMAX;component/Fonts/#Source Sans Pro)�6k      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5!        RightAligned1  +System.Windows.Controls.DataGridBoundColumn   ElementStyle# [ 6-   ,  &System.Windows.Controls.DataGridColumn   Header$ 
Агент��6Z      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 6�      Binding 6i   �� *	Agent.fio+   HeaderStyle 5"      �� 5#   "    �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6(   .�5$   &   ��  �� Property � �� �� Value$ Center=�6S   5%   #   5(        5)      # [ 6-   $% Страховой случай��6Z   $	 130 6�    6t   �� *InsuranceCase.Name+ 5*      �� 5+   "   "  6(   .�5,   &   ��  � ��$ Center=�6S   5-   #   5/        50      # [ 6-   $ Дата��6Z   $	 150 6h    6t   �� *date+ �� StringFormat$ 
dd-MM-yyyy�� 51      �� 52   "   "  6(   .�53   &   ��  � ��$ Center=�6S   54   #   56        57      # [ 6-   $ Клиент��6Z   $	 200 6�    6j   �� *Client.Name+ 58      �� 59   "   "  6(   .�5:   &   ��  � ��$ Center=�6S   5;   #   5=        5>      # [ 6-   $ Кол-во лет��6Z   $	 100 6�    6n   �� *years+ 5?      �� 5@   "   "  6(   .�5A   &   ��  � ��$ Center=�6S   5B   #   5E        5F      # [ 6-   $ 
Сумма��6Z   $	 130 6�    6i   �� *sum+$ {0} руб.�� 5G      �� 5H   "   "  6(   .�5I   &   ��  � ��$ Center=�6S   5J   #   5L      5P      5S      5T      5U      5V      
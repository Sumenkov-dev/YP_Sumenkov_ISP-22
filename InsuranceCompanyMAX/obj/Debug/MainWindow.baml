   M S B A M L   `   `   `  ����N  JInsuranceCompanyMAX, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:InsuranceCompanyMAXInsuranceCompanyMAX  5   	   $    InsuranceCompanyMAX.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:InsuranceCompanyMAX     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          �Name$  
mainWindow��5   	    � Title$M GСтраховая компания "МАКС" - Авторизация��5	   	   $	��400��6C   $	��400��6P    � 
ResizeMode$ NoResize=�6\    � WindowStartupLocation$ CenterScreen=�6r   .��5
      � ���	#FF003352.+�5   
   �� 
�������$��Center=�6$    �� Padding$ 0,0,0,0q�6?   $	��550��6Q   $	��360��6`   $	��330��6l    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 10Q�6#      Color$ 	LightGray��63      ShadowDepth$ 0Q�6E   ._�5      � .+�5      �� $��0,0,0,0q�6   $��Center=�6.   $��Center=�6K   .+�5      �� $��\18OPHlTnK-Q.jpg��6   $��Center=�66   $	��Top=�6S   $	��180��6k   $��0,0,0,0q�6w   �� 5      	 �� Orientation$	 
Horizontal=�6!   .+�5      �� -   5        
 ��Name$
 textBoxLogin��5   "   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин��68    %  !MaterialDesignFloatingHintTextBox#��[  6_    �� 
CaretBrush �	#FF008BFF �� SelectionBrush �	#FF008BFF$��Proxima Nova Rg)�6�   $��Stretch=�6�   $��17(�6   � Cursor$ Arrow��6  $	��275��6$  �� 5      -   5         ��Name$ logClearButt��5   !   
������ 
������ $
 Hand��5   R     transperent#��[ 6`   .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Clear=�66   ���	#FF003352$��25��6Z   $��25��6e   5      5      �� 5!      $	 
Horizontal=�6!   $��0,10,0,0q�6:   .+�5"      G� -   5         G�Name$ passBox��5"   &   $ Пароль��67    ) %MaterialDesignFloatingHintPasswordBox#��[ 6_    G� 
CaretBrush �	#FF008BFF G� SelectionBrush �	#FF008BFF$��Proxima Nova Rg)�6�   $ Arrow��6�   $��17(�6�   $	��275��6
  $��43.865771484375��6  �� 5#      -   5        $ showPass��5#   !   
������ $��25��5%      $��25��5&      
������ $
 Hand��5'   N   #��[ 6\   .��5*        -   5          Name$ showPassIcon��5*   6   $	 Eye=�6L   ���	#FF003352$��25��6n   $��25��6y   $��Center=�6�   $��Center=�6�   5+      5,      �� 5-      -   5        $ buttonEnter��5-        LigtCoursor#��[ 62   $��
Войти��6W   $��0 20 0 0q�6g   ���	#FF008BFF
�������$5��//InsuranceCompanyMAX;component/#Source Sans Pro)�6�   $
 Hand��6�   $��32��6
  $
��Bold"�6  5.      �� 5/      -   5        $
 passBox2��5/      $ Пароль��6,   #��[  6T    �	#FF008BFF �	#FF008BFF$��Proxima Nova Rg)�6�   $ Arrow��6�   $��17(�6�   $��Center=�6�   $��Center=�6  $	��275��63  $��43.865771484375��6?  $��
0,112,25,0q�6X  $y�Hidden=�6l  51      52      53      54      
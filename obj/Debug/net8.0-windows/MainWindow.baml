   M S B A M L   `   `   `  ����E  AWeatherApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WeatherApp
WeatherApp  5   	       WeatherApp.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:WeatherApp     5   	     � Title$  Weather App��5   	   $	��512��6   $
��1024��6*    � 
ResizeMode$ NoResize=�5	   	    � 	Resources 5         FocusVisual �� Property �� Value �� StrokeDashArray!  System.Windows.SystemColors   ControlTextBrushKey J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonStyle1	 �� 
TargetType
 �� 
TargetType ��Name ��Name �� Triggers P� Property P� Value �� 
TargetName   HighlightBrushKey��%�  &	        &	 �     &	 �     &	 �     &	     &	 ?    &	 b    &	 �    &	 �    &		 �    &	
 �    7   7  7  7  7  7 	 �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #���  6E   $
 true��6�   $��1��6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   "	 ��6%   .�5      ��  �@�FocusVisualStyle8   61   �� 5        � ��8  6+   �� 5!       � ��8  6,   �� 5"       � ��# �  6+   �� 5#       � ��$ 1q�60   �� 5$       � ��$ Center=�6;   �� 5%       � ��$ Center=�69   �� 5&       � ��$ 1q�6(   �� 5'       � �� 5(      �� 5)      "
 ��6&   .R�5*      �� $ border��6!   #��z��61   #��z��6[   #��z��6�   $
 true��6�   ._�5+      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5,       5-      P� 5.       �@��IsDefaulted$
 true��6=   . �5/   "   �� $ border��6@   # �  6T    � ��50      P� 51       �@J�IsMouseOver$
 true��6=   52      P� 53       � ��$
 true��6;   54      P� 55       � {�$ false��6;   . �56   "   �� $ border��6?   8   � ��6S   �� 57   "   $ border��6@   8   � ��6T   �� 58   "   $ contentPresenter��6K   8   � ��6i   59      5;      5=      5>      5?      .��5@      �  � ColumnDefinitions 5A   
   �� 5B      $��20 �6   5D      �� 5E      5G      �� 5I      5K      �� 5L      $��20 �6   5N      �� 5O      5Q      �� 5R      $��20 �6   5T       � RowDefinitions 5W   
   �� 5X      $��20 �6   5Z      �� 5[      $��50 �6   5]      �� 5^      $��50 �6   5`      �� 5a      $	��100 �6   5c      �� 5e      $��80 �6   5g      �� 5h      $��70 �6   5j      �� 5k      5m      �� 5n      $��20 �6   5p      ��5s   
   �� 5t      -   5        backgroundImage�� �� ImageSource$* $/WeatherApp;component/Images/Sun.png��5t   2   5v      .+�5x   
   �� -   5         ��Name$ labelCityname��5x      $��3��6'   $��2��64   $��
Langenthal��6D   $��Center=�6Y   $��Center=�6v   $��48(�6�   $
��Bold"�6�   $��Italic$�6�   
���������6�   Z�  J� Effect 5y      3  -System.Windows.Media.Effects.DropShadowEffect  5z      5|      �� 5}   
   -   5        $ labelTemperature��5}      $��4��6*   $��2��67   $
��5°C��6G   $��Center=�6U   $��Center=�6r   $��48(�6�   
������� 5~        5      5�      �� 5�   
   -   5        $ 	labelInfo��5�      $��5��6#   $��2��60   $��Cloudy��6@   $��Center=�6Q   $	��Top=�6n   $��22(�6�   
������� 5�        5�         
BlurRadius$ 5Q�6#      ShadowDepth$ 3Q�62   5�      �� 5�   
   $��1��6   $��1��6   $��2��6.    �� Padding$ 5q�6B    �� CornerRadius$ 25��6N   $��1q�6`   
�������._�5�      �� -   5         ��Name$ TextBoxInput��5�      $��
Langenthal��6,   
������ $��0q�6W   $��Center=�6k   $��Center=�6�   $��22(�6�   6�   5�      �� 5�   
   $��1��6   $��4��6   $ 5q�6.   $ 10��6:   $��1q�6L   
�������._�5�      �� -   5        #��� 
 5�   *    � Cursor$
 Hand��6Q   
������ $��0q�6x   $��Search��6�   $��22(�6�   6�   5�      5�      5�      
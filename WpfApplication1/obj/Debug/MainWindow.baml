   M S B A M L   `   `   `  ����R  NOxyPlot.Wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=75e952ba404cdbb0>.clr-namespace:OxyPlot.Wpf;assembly=OxyPlot.WpfOxyPlot.Wpf  5   	    WpfApplication1   HomePlotter.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >oxy.clr-namespace:OxyPlot.Wpf;assembly=OxyPlot.Wpf     5   	     � Title$  
MainWindow��5   	   $��564.706��6   $��956.373��6-   .��5	      �  � RowDefinitions 5
   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
comboSalle��5      $��4��6'   $��10,16,10,32q�6c   $��2��6x   �� 5   
   -   5         ��Name$ 
LabelSalle��5      $!��Veuillez saisir votre salle��6$   $
��Left=�6J   $��
10,60,0,78q�6e   $	��217��6y   $��3��6�   $��2��6�   $��2��6�      OxyPlot.Wpf.PlotView  5    
   $��3��64   $��3��6C   $��3��6T   $��28,41,56,10q�6h   $��2��6}      Model 6   �� *
GraphModel+6}     5!   
   $��5��62   $��3��6D   $��3��6U   $��94,29,26,57q�6i    6   �� *	modelP1+6i   �� 5"   
   -   5         ��Name$ ImgLeg��5"      $��3��6!   $��5��6.   $��3��6>   $��76,60,44,29q�6l   $��3��6�   ��6O   �� *	sourceImg+6�   �� 5#   
   -   5         ��Name$ BtnCam��5#      $��Afficher camembert��6!   $��3��6>   $��1��6N   $��2��6_   $��10,29,11,23q�6t   6�   �� 5$   
   -   5        $ Button��5$      $��Search��6!   $��5��62   $��10,42,10,10q�6T   $��2��6i   �� 5%   
   -   5        $ 	ComboDate��5%      $��4��6&   $��10,62,10,76q�63   $��2��6H   $��2��6\   &   System.Windows.Controls.Calendar  5&   
   -   5          Name$ CalandarWeek��5&      $
��Left=�6)   $��	10,10,0,0q�6D   $	��Top=�6W   $��0��6o   $��3��5'      $��3��6$   $��0��68   $	��247��6H   $	��345��6U   	   DisplayDateStart$	 
2014-01-31X�6a   
   DisplayDateEnd$
 
2014-09-25X�6      DisplayDate$ 
2014-01-31��6�   6�   5)      5*      
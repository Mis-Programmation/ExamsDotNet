   M S B A M L   `   `   `  ����G  CExamsDotNet1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ExamsDotNet1ExamsDotNet1  5   	       ExamsDotNet1.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ExamsDotNet1     5   	     � Title$  
MainWindow��5   	   $	��542��6   $
��1129��6)   .��5	      � .+�5
   
   �� $
��Left=�6   $��
190,20,0,0q�6/   $
��Wrap=�6C   $	��Top=�6W   $	��150��6o   �� 6|   $�AJOUT CLIENT��6�   �� 6�   �� 6�   6�   �� 5   
   -   5         ��Name$
 code��5      $
��Left=�6!   $��23��6<   $��
135,65,0,0q�6H    �� TextWrapping$
 Wrap=�6\   $	��Top=�6p   $	��175��6�   �� 5   
   $
��Code��6   $
��Left=�6   $	��Top=�6:   $��	60,65,0,0q�6R   $��65��6e   �� 5   
   $��Prenom��6   $
��Left=�6!   $	��Top=�6<   $��
55,105,0,0q�6T   $��63��6h   �� 5   
   $	��Nom��6   $
��Left=�6   $	��Top=�69   $��
62,145,0,0q�6Q    J� RenderTransformOrigin$ 0.474,-1.115&�6e   �� 5   
   $��Adresse��6   $
��Left=�6"   $	��Top=�6=   $��
55,195,0,0q�6U   �� 5   
   -   5        $ 	firstName��5      $
��Left=�6%   $��23��6@   $��135,105,0,0q�6L   $
 Wrap=�6a   $	��Top=�6u   $	��175��6�   �� 5   
   -   5        $ lastName��5      $
��Left=�6$   $��23��6?   $��135,145,0,0q�6K   $
 Wrap=�6`   $	��Top=�6t   $	��175��6�   �� 5   
   -   5        $ adress��5      $
��Left=�6"   $��23��6=   $��135,195,0,0q�6I   $
 Wrap=�6^   $	��Top=�6r   $	��175��6�   �� 5   
   $��Email��6   $
��Left=�6    $	��Top=�6;   $��
60,240,0,0q�6S   �� 5   
   -   5        $ email��5      $
��Left=�6!   $��23��6<   $��135,240,0,0q�6H   $
 Wrap=�6]   $	��Top=�6q   $	��180��6�   �� 5   
   -   5        $��Enregistrer��5      $
��Left=�6'   $��140,375,0,0q�6B   $	��Top=�6W   $	��160��6o   $��30��6{   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ tableDTG��5   Z      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6   $
��Left=�6#      AutoGenerateColumns .  $	��295��6l   $��
370,55,0,0q�6y   $	��Top=�6�   $	��675��6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Code��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 63   �� *code+  5      $ Prenom��6%   	 66   �� *prenom+  5      $	 Nom��6%   	 63   �� *nom+  5      $	 Tel��6%   	 63   �� *tel+  5      $ Adress��6%   	 67   �� *	adresse+  5      $ Email��6%   	 65   �� *email+  5      $ 	Categorie��6%   	 69   �� *categorie.libelle+5       �� 5!   
   -   5        
 ��Name$
 combox��5!      $
��Left=�6#   $	��Top=�6>   $	��180��6V   $��135,320,0,0q�6b   �� 5"   
   $��
Categories��6   $
��Left=�6%   $	��Top=�6@   $��
34,319,0,0q�6X   $��91��6l   �� 5#   
   $	��Tel��6   $
��Left=�6   $	��Top=�69   $��
60,280,0,0q�6Q   �� 5$   
   -	   5        $	 tel��5$      $
��Left=�6   $��23��6:   $��135,280,0,0q�6F   $
 Wrap=�6[   $	��Top=�6o   $	��180��6�   5&      5'      
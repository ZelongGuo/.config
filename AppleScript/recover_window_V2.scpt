FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ^ X No matter if there is a expanding screen ot not, then this scripts recover the windows.     � 	 	 �   N o   m a t t e r   i f   t h e r e   i s   a   e x p a n d i n g   s c r e e n   o t   n o t ,   t h e n   t h i s   s c r i p t s   r e c o v e r   t h e   w i n d o w s .   
  
 l     ��  ��    + % Get the bounds of the current screen     �   J   G e t   t h e   b o u n d s   o f   t h e   c u r r e n t   s c r e e n      l     ����  O         r        n        1   	 ��
�� 
pbnd  n    	    m    	��
�� 
cwin  1    ��
�� 
desk  o      ���� 0 currentscreen currentScreen  m       �                                                                                  MACS  alis    @  Macintosh HD               �_�xBD ����
Finder.app                                                     �����_�x        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��        l     ��������  ��  ��        l     ��   ��    * $ Calculate the bounds of the browser      � ! ! H   C a l c u l a t e   t h e   b o u n d s   o f   t h e   b r o w s e r   " # " l    $���� $ r     % & % l    '���� ' n     ( ) ( 4    �� *
�� 
cobj * m    ����  ) o    ���� 0 currentscreen currentScreen��  ��   & o      ���� 0 browserwidth browserWidth��  ��   #  + , + l   ' -���� - r    ' . / . J    % 0 0  1 2 1 n     3 4 3 4    �� 5
�� 
cobj 5 m    ����  4 o    ���� 0 currentscreen currentScreen 2  6 7 6 n     8 9 8 4    �� :
�� 
cobj : m    ����  9 o    ���� 0 currentscreen currentScreen 7  ; < ; o    ���� 0 browserwidth browserWidth <  =�� = n    # > ? > 4     #�� @
�� 
cobj @ m   ! "����  ? o     ���� 0 currentscreen currentScreen��   / o      ���� 0 browserbounds browserBounds��  ��   ,  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E ( " Calculate the bounds of the ITerm    F � G G D   C a l c u l a t e   t h e   b o u n d s   o f   t h e   I T e r m D  H I H l  ( . J���� J r   ( . K L K l  ( , M���� M n   ( , N O N 4   ) ,�� P
�� 
cobj P m   * +����  O o   ( )���� 0 currentscreen currentScreen��  ��   L o      ���� 0 
itermwidth 
iTermWidth��  ��   I  Q R Q l  / @ S���� S r   / @ T U T J   / > V V  W X W n   / 3 Y Z Y 4   0 3�� [
�� 
cobj [ m   1 2����  Z o   / 0���� 0 currentscreen currentScreen X  \ ] \ n   3 7 ^ _ ^ 4   4 7�� `
�� 
cobj ` m   5 6����  _ o   3 4���� 0 currentscreen currentScreen ]  a b a o   7 8���� 0 
itermwidth 
iTermWidth b  c�� c n   8 < d e d 4   9 <�� f
�� 
cobj f m   : ;����  e o   8 9���� 0 currentscreen currentScreen��   U o      ���� 0 itermbounds iTermBounds��  ��   R  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k 7 1 Open the browser and set its poosition and size     l � m m b   O p e n   t h e   b r o w s e r   a n d   s e t   i t s   p o o s i t i o n   a n d   s i z e   j  n o n l  A Y p���� p O   A Y q r q k   E X s s  t u t I  E J������
�� .miscactvnull��� ��� null��  ��   u  v�� v O   K X w x w r   R W y z y o   R S���� 0 browserbounds browserBounds z 1   S V��
�� 
pbnd x 4  K O�� {
�� 
cwin { m   M N���� ��   r m   A B | |�                                                                                  rimZ  alis    >  Macintosh HD               �_�xBD ����Google Chrome.app                                              �����c��        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   o  } ~ } l     ��������  ��  ��   ~   �  l     �� � ���   � 5 / Move the iTerm window to the specific position    � � � � ^   M o v e   t h e   i T e r m   w i n d o w   t o   t h e   s p e c i f i c   p o s i t i o n �  ��� � l  Z r ����� � O   Z r � � � k   ^ q � �  � � � I  ^ c������
�� .miscactvnull��� ��� null��  ��   �  ��� � O   d q � � � r   k p � � � o   k l���� 0 itermbounds iTermBounds � 1   l o��
�� 
pbnd � l  d h ����� � 4  d h�� �
�� 
cwin � m   f g���� ��  ��  ��   � m   Z [ � �|                                                                                  ITRM  alis      Macintosh HD               �_�xBD ����	iTerm.app                                                      �������        ����  
 cu             Applications  /:Applications:iTerm.app/    	 i T e r m . a p p    M a c i n t o s h   H D  Applications/iTerm.app  / ��  ��  ��  ��       
�� � � ��� ��� �������   � ����������������
�� .aevtoappnull  �   � ****�� 0 currentscreen currentScreen�� 0 browserwidth browserWidth�� 0 browserbounds browserBounds�� 0 
itermwidth 
iTermWidth�� 0 itermbounds iTermBounds��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     r � �   � �  " � �  + � �  H � �  Q � �  n � �  �����  ��  ��   �   �  �������������������� |�� �
�� 
desk
�� 
cwin
�� 
pbnd�� 0 currentscreen currentScreen
�� 
cobj�� 0 browserwidth browserWidth�� �� 0 browserbounds browserBounds�� 0 
itermwidth 
iTermWidth�� 0 itermbounds iTermBounds
�� .miscactvnull��� ��� null�� s� *�,�,�,E�UO��m/E�O��k/��l/����/�vE�O��m/E�O��k/��l/����/�vE�O� *j O*�k/ �*�,FUUO� *j O*�k/ �*�,FUU � �� ���  �  ������������������������ � �� ���  �  ����~�}�������~��}���� � �| ��|  �  �{�z�y�x�{��z���y��x���  ��   ascr  ��ޭ
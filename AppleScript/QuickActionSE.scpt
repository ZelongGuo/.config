FasdUAS 1.101.10   ��   ��    k             l     ��  ��    &   Get the screen width and height     � 	 	 @   G e t   t h e   s c r e e n   w i d t h   a n d   h e i g h t   
  
 l     ����  r         l     ����  I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   � s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   |   a w k   ' / R e s o l u t i o n / { p r i n t   $ 2   /   2 } '��  ��  ��    o      ���� 0 screenwidth  ��  ��        l    ����  r        l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m    	   �   � s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   |   a w k   ' / R e s o l u t i o n / { p r i n t   $ 4 } '��  ��  ��    o      ���� 0 screenheight screenHeight��  ��        l     ��  ��    J D display dialog "screenwidth is " & screenwidth & "," & screenHeight     �     �   d i s p l a y   d i a l o g   " s c r e e n w i d t h   i s   "   &   s c r e e n w i d t h   &   " , "   &   s c r e e n H e i g h t   ! " ! l     ��������  ��  ��   "  # $ # l     �� % &��   % 9 3 Get the current bounds of Google Chrome and iTerm2    & � ' ' f   G e t   t h e   c u r r e n t   b o u n d s   o f   G o o g l e   C h r o m e   a n d   i T e r m 2 $  ( ) ( l   ( *���� * O    ( + , + k    ' - -  . / . I   ������
�� .miscactvnull��� ��� null��  ��   /  0�� 0 O    ' 1 2 1 r   ! & 3 4 3 1   ! $��
�� 
pbnd 4 o      ���� 0 chromebounds chromeBounds 2 4   �� 5
�� 
cwin 5 m    ���� ��   , m     6 6�                                                                                  rimZ  alis    >  Macintosh HD               �N,�BD ����Google Chrome.app                                              �����c��        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   )  7 8 7 l  ) A 9���� 9 O   ) A : ; : k   - @ < <  = > = I  - 2������
�� .miscactvnull��� ��� null��  ��   >  ?�� ? O   3 @ @ A @ r   : ? B C B 1   : =��
�� 
pbnd C o      ���� 0 itermbounds itermBounds A 4  3 7�� D
�� 
cwin D m   5 6���� ��   ; m   ) * E E|                                                                                  ITRM  alis      Macintosh HD               �N,�BD ����	iTerm.app                                                      �������        ����  
 cu             Applications  /:Applications:iTerm.app/    	 i T e r m . a p p    M a c i n t o s h   H D  Applications/iTerm.app  / ��  ��  ��   8  F G F l     �� H I��   H � � display dialog "Chrome window bounds: " & (item 1 of chromeBounds) & ", " & (item 2 of chromeBounds) & ", " & (item 3 of chromeBounds) & ", " & (item 4 of chromeBounds)    I � J JR   d i s p l a y   d i a l o g   " C h r o m e   w i n d o w   b o u n d s :   "   &   ( i t e m   1   o f   c h r o m e B o u n d s )   &   " ,   "   &   ( i t e m   2   o f   c h r o m e B o u n d s )   &   " ,   "   &   ( i t e m   3   o f   c h r o m e B o u n d s )   &   " ,   "   &   ( i t e m   4   o f   c h r o m e B o u n d s ) G  K L K l     ��������  ��  ��   L  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q . ( Determine if both windows are maximized    R � S S P   D e t e r m i n e   i f   b o t h   w i n d o w s   a r e   m a x i m i z e d P  T U T l  B E V���� V r   B E W X W m   B C��
�� boovfals X o      ���� 0 ismaximized isMaximized��  ��   U  Y Z Y l  F � [���� [ Z   F � \ ]���� \ F   F � ^ _ ^ F   F � ` a ` F   F � b c b F   F ~ d e d F   F s f g f F   F d h i h F   F W j k j l  F L l���� l =   F L m n m n   F J o p o 4   G J�� q
�� 
cobj q m   H I����  p o   F G���� 0 chromebounds chromeBounds n m   J K����  ��  ��   k l  O U r���� r =   O U s t s n   O S u v u 4   P S�� w
�� 
cobj w m   Q R����  v o   O P���� 0 chromebounds chromeBounds t m   S T���� &��  ��   i l  Z b x���� x =   Z b y z y n   Z ^ { | { 4   [ ^�� }
�� 
cobj } m   \ ]����  | o   Z [���� 0 chromebounds chromeBounds z m   ^ a�������  ��   g l  g q ~���� ~ =   g q  �  n   g m � � � 4   h m�� �
�� 
cobj � m   i l����  � o   g h���� 0 chromebounds chromeBounds � m   m p�������  ��   e l  v | ����� � =   v | � � � n   v z � � � 4   w z�� �
�� 
cobj � m   x y����  � o   v w���� 0 itermbounds itermBounds � m   z {����  ��  ��   c l  � � ����� � =   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 itermbounds itermBounds � m   � ����� &��  ��   a l  � � ����� � =   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 itermbounds itermBounds � m   � ��������  ��   _ l  � � ����� � =   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 itermbounds itermBounds � m   � ��������  ��   ] r   � � � � � m   � ���
�� boovtrue � o      ���� 0 ismaximized isMaximized��  ��  ��  ��   Z  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , pos is a list {x, y, x + width, y + height}    � � � � X   p o s   i s   a   l i s t   { x ,   y ,   x   +   w i d t h ,   y   +   h e i g h t } �  � � � l     �� � ���   � C = Maximize or split the windows depending on the current state    � � � � z   M a x i m i z e   o r   s p l i t   t h e   w i n d o w s   d e p e n d i n g   o n   t h e   c u r r e n t   s t a t e �  � � � l  �! ����� � Z   �! � ��� � � o   � ����� 0 ismaximized isMaximized � k   � � � �  � � � O  � � � � � r   � � � � � J   � � � �  � � � m   � �����   �  � � � m   � �����   �  � � � ]   � � � � � ^   � � � � � o   � ����� 0 screenwidth   � m   � �����  � m   � �����  �  ��� � o   � ����� 0 screenheight screenHeight��   � n       � � � 1   � ���
�� 
pbnd � 4   � ��� �
�� 
cwin � m   � �����  � m   � � � ��                                                                                  rimZ  alis    >  Macintosh HD               �N,�BD ����Google Chrome.app                                              �����c��        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   �  ��� � O   � � � � � k   � � � �  � � � r   � � � � � J   � � � �  � � � ]   � � � � � ^   � � � � � o   � ����� 0 screenwidth   � m   � ���  � m   � ��~�~  �  � � � m   � ��}�}   �  � � � o   � ��|�| 0 screenwidth   �  ��{ � o   � ��z�z 0 screenheight screenHeight�{   � n       � � � 1   � ��y
�y 
pbnd � 4   � ��x �
�x 
cwin � m   � ��w�w  �  ��v � I  � ��u�t�s
�u .miscactvnull��� ��� null�t  �s  �v   � m   � � � �|                                                                                  ITRM  alis      Macintosh HD               �N,�BD ����	iTerm.app                                                      �������        ����  
 cu             Applications  /:Applications:iTerm.app/    	 i T e r m . a p p    M a c i n t o s h   H D  Applications/iTerm.app  / ��  ��  ��   � k   �! � �  � � � O  � � � � r   � � � � J   � � � �  � � � m   � ��r�r   �  � � � m   � ��q�q   �  � � � o   � ��p�p 0 screenwidth   �  ��o � o   � ��n�n 0 screenheight screenHeight�o   � n       � � � 1  �m
�m 
pbnd � 4   ��l �
�l 
cwin � m   �k�k  � m   � � � �|                                                                                  ITRM  alis      Macintosh HD               �N,�BD ����	iTerm.app                                                      �������        ����  
 cu             Applications  /:Applications:iTerm.app/    	 i T e r m . a p p    M a c i n t o s h   H D  Applications/iTerm.app  / ��   �  ��j � O  ! � � � k    � �  � � � r   � � � J   � �  � � � m  �i�i   �  � � � m  �h�h   �    o  �g�g 0 screenwidth   �f o  �e�e 0 screenheight screenHeight�f   � n       1  �d
�d 
pbnd 4  �c
�c 
cwin m  �b�b  � �a I  �`�_�^
�` .miscactvnull��� ��� null�_  �^  �a   � m  �                                                                                  rimZ  alis    >  Macintosh HD               �N,�BD ����Google Chrome.app                                              �����c��        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  �j  ��  ��   � �] l     �\�[�Z�\  �[  �Z  �]       �Y	
�Y  	 �X
�X .aevtoappnull  �   � ****
 �W�V�U�T
�W .aevtoappnull  �   � **** k    !  
    (  7  T  Y  ��S�S  �V  �U      �R�Q �P 6�O�N�M�L E�K�J�I�H�G�F�E�D�C
�R .sysoexecTEXT���     TEXT�Q 0 screenwidth  �P 0 screenheight screenHeight
�O .miscactvnull��� ��� null
�N 
cwin
�M 
pbnd�L 0 chromebounds chromeBounds�K 0 itermbounds itermBounds�J 0 ismaximized isMaximized
�I 
cobj�H &
�G 
bool�F��E �D��C �T"�j E�O�j E�O� *j O*�k/ *�,E�UUO� *j O*�k/ *�,E�UUOfE�O��k/j 	 
��l/� �&	 ��m/a  �&	 ��a /a  �&	 
��k/j �&	 
��l/� �&	 ��m/a  �&	 ��a /a  �& eE�Y hO� @� jj�a !m �a v*�k/�,FUO� �a !m j��a v*�k/�,FO*j UY 1� jj��a v*�k/�,FUO� jj��a v*�k/�,FO*j Uascr  ��ޭ
FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ~ x If there are not only 1 screens, this script (V2) will resize the window to the expand window (or the current window).      � 	 	 �   I f   t h e r e   a r e   n o t   o n l y   1   s c r e e n s ,   t h i s   s c r i p t   ( V 2 )   w i l l   r e s i z e   t h e   w i n d o w   t o   t h e   e x p a n d   w i n d o w   ( o r   t h e   c u r r e n t   w i n d o w ) .     
  
 l     ��������  ��  ��        l     ��  ��    + % Get the bounds of the current screen     �   J   G e t   t h e   b o u n d s   o f   t h e   c u r r e n t   s c r e e n      l     ����  O         r        n        1   	 ��
�� 
pbnd  n    	    m    	��
�� 
cwin  1    ��
�� 
desk  o      ���� 0 currentscreen currentScreen  m       �                                                                                  MACS  alis    @  Macintosh HD               �+zBD ����
Finder.app                                                     �����+z        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��        l     ��������  ��  ��         l     �� ! "��   ! * $ Calculate the bounds of the browser    " � # # H   C a l c u l a t e   t h e   b o u n d s   o f   t h e   b r o w s e r    $ % $ l    &���� & r     ' ( ' ]     ) * ) l    +���� + n     , - , 4    �� .
�� 
cobj . m    ����  - o    ���� 0 currentscreen currentScreen��  ��   * m     / / ?ᙙ���� ( o      ���� 0 browserwidth browserWidth��  ��   %  0 1 0 l   ) 2���� 2 r    ) 3 4 3 J    ' 5 5  6 7 6 n     8 9 8 4    �� :
�� 
cobj : m    ����  9 o    ���� 0 currentscreen currentScreen 7  ; < ; n      = > = 4     �� ?
�� 
cobj ? m    ����  > o    ���� 0 currentscreen currentScreen <  @ A @ o     !���� 0 browserwidth browserWidth A  B�� B n   ! % C D C 4   " %�� E
�� 
cobj E m   # $����  D o   ! "���� 0 currentscreen currentScreen��   4 o      ���� 0 browserbounds browserBounds��  ��   1  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J ( " Calculate the bounds of the ITerm    K � L L D   C a l c u l a t e   t h e   b o u n d s   o f   t h e   I T e r m I  M N M l     �� O P��   O A ; set iTermWidth to (item 3 of currentScreen) - browserWidth    P � Q Q v   s e t   i T e r m W i d t h   t o   ( i t e m   3   o f   c u r r e n t S c r e e n )   -   b r o w s e r W i d t h N  R S R l  * ; T���� T r   * ; U V U J   * 9 W W  X Y X o   * +���� 0 browserwidth browserWidth Y  Z [ Z n   + / \ ] \ 4   , /�� ^
�� 
cobj ^ m   - .����  ] o   + ,���� 0 currentscreen currentScreen [  _ ` _ n   / 3 a b a 4   0 3�� c
�� 
cobj c m   1 2����  b o   / 0���� 0 currentscreen currentScreen `  d�� d n   3 7 e f e 4   4 7�� g
�� 
cobj g m   5 6����  f o   3 4���� 0 currentscreen currentScreen��   V o      ���� 0 itermbounds iTermBounds��  ��   S  h i h l     ��������  ��  ��   i  j k j l     �� l m��   l 7 1 Open the browser and set its poosition and size     m � n n b   O p e n   t h e   b r o w s e r   a n d   s e t   i t s   p o o s i t i o n   a n d   s i z e   k  o p o l  < T q���� q O   < T r s r k   @ S t t  u v u I  @ E������
�� .miscactvnull��� ��� null��  ��   v  w�� w O   F S x y x r   M R z { z o   M N���� 0 browserbounds browserBounds { 1   N Q��
�� 
pbnd y 4  F J�� |
�� 
cwin | m   H I���� ��   s m   < = } }�                                                                                  rimZ  alis    >  Macintosh HD               �+zBD ����Google Chrome.app                                              �����c��        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   p  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   � 5 / Move the iTerm window to the specific position    � � � � ^   M o v e   t h e   i T e r m   w i n d o w   t o   t h e   s p e c i f i c   p o s i t i o n �  � � � l  U m ����� � O   U m � � � k   Y l � �  � � � I  Y ^������
�� .miscactvnull��� ��� null��  ��   �  ��� � O   _ l � � � r   f k � � � o   f g���� 0 itermbounds iTermBounds � 1   g j��
�� 
pbnd � l  _ c ����� � 4  _ c�� �
�� 
cwin � m   a b���� ��  ��  ��   � m   U V � �|                                                                                  ITRM  alis      Macintosh HD               �+zBD ����	iTerm.app                                                      �������        ����  
 cu             Applications  /:Applications:iTerm.app/    	 i T e r m . a p p    M a c i n t o s h   H D  Applications/iTerm.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       
�� � � � � � ���������   � ����������������
�� .aevtoappnull  �   � ****�� 0 currentscreen currentScreen�� 0 browserwidth browserWidth�� 0 browserbounds browserBounds�� 0 itermbounds iTermBounds��  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     m � �   � �  $ � �  0 � �  R � �  o � �  �����  ��  ��   �   �  ���������� /������� }�~ �
�� 
desk
�� 
cwin
�� 
pbnd�� 0 currentscreen currentScreen
�� 
cobj�� 0 browserwidth browserWidth�� �� 0 browserbounds browserBounds� 0 itermbounds iTermBounds
�~ .miscactvnull��� ��� null�� n� *�,�,�,E�UO��m/� E�O��k/��l/����/�vE�O���l/��m/���/�vE�O� *j O*�k/ �*�,FUUO� *j O*�k/ �*�,FUU � �} ��}  �  �|�{�z�y�|��{���z��y� � @��     � �x ��x  �  �w�v ��u�w��v���u� � �t ��t  �   ��s�r�q�s���r��q���  ��  ��  ascr  ��ޭ
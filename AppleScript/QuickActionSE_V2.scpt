FasdUAS 1.101.10   ��   ��    k             l     ��  ��    + % Get the bounds of the current screen     � 	 	 J   G e t   t h e   b o u n d s   o f   t h e   c u r r e n t   s c r e e n   
  
 l     ����  O         r        n        1   	 ��
�� 
pbnd  n    	    m    	��
�� 
cwin  1    ��
�� 
desk  o      ���� 0 currentscreen currentScreen  m       �                                                                                  MACS  alis    @  Macintosh HD               ���`BD ����
Finder.app                                                     �������`        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��        l     ��������  ��  ��        l     ��  ��    ' ! Get the bounds of current screen     �   B   G e t   t h e   b o u n d s   o f   c u r r e n t   s c r e e n      l    ����  r       !   l    "���� " n     # $ # 4    �� %
�� 
cobj % m    ����  $ o    ���� 0 currentscreen currentScreen��  ��   ! o      ���� 0 x X��  ��     & ' & l    (���� ( r     ) * ) l    +���� + n     , - , 4    �� .
�� 
cobj . m    ����  - o    ���� 0 currentscreen currentScreen��  ��   * o      ���� 0 y Y��  ��   '  / 0 / l   # 1���� 1 r    # 2 3 2 l   ! 4���� 4 n    ! 5 6 5 4    !�� 7
�� 
cobj 7 m     ����  6 o    ���� 0 currentscreen currentScreen��  ��   3 o      ���� 0 screenwidth screenWidth��  ��   0  8 9 8 l  $ * :���� : r   $ * ; < ; l  $ ( =���� = n   $ ( > ? > 4   % (�� @
�� 
cobj @ m   & '����  ? l  $ % A���� A o   $ %���� 0 currentscreen currentScreen��  ��  ��  ��   < o      ���� 0 height Height��  ��   9  B C B l     �� D E��   D o i set browserBounds to {item 1 of currentScreen, item 2 of currentScreen, rWidth, item 4 of currentScreen}    E � F F �   s e t   b r o w s e r B o u n d s   t o   { i t e m   1   o f   c u r r e n t S c r e e n ,   i t e m   2   o f   c u r r e n t S c r e e n ,   r W i d t h ,   i t e m   4   o f   c u r r e n t S c r e e n } C  G H G l     �� I J��   I , & display dialog X & Y & Width & Height    J � K K L   d i s p l a y   d i a l o g   X   &   Y   &   W i d t h   &   H e i g h t H  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P 9 3 Get the current bounds of Google Chrome and iTerm2    Q � R R f   G e t   t h e   c u r r e n t   b o u n d s   o f   G o o g l e   C h r o m e   a n d   i T e r m 2 O  S T S l  + C U���� U O   + C V W V k   / B X X  Y Z Y I  / 4������
�� .miscactvnull��� ��� null��  ��   Z  [�� [ O   5 B \ ] \ r   < A ^ _ ^ 1   < ?��
�� 
pbnd _ o      ���� 0 chromebounds chromeBounds ] 4  5 9�� `
�� 
cwin ` m   7 8���� ��   W m   + , a a�                                                                                  rimZ  alis    >  Macintosh HD               ���`BD ����Google Chrome.app                                              �����c��        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   T  b c b l  D \ d���� d O   D \ e f e k   H [ g g  h i h I  H M������
�� .miscactvnull��� ��� null��  ��   i  j�� j O   N [ k l k r   U Z m n m 1   U X��
�� 
pbnd n o      ���� 0 itermbounds itermBounds l 4  N R�� o
�� 
cwin o m   P Q���� ��   f m   D E p p|                                                                                  ITRM  alis      Macintosh HD               ���`BD ����	iTerm.app                                                      �������        ����  
 cu             Applications  /:Applications:iTerm.app/    	 i T e r m . a p p    M a c i n t o s h   H D  Applications/iTerm.app  / ��  ��  ��   c  q r q l     �� s t��   s 0 * display dialog chromeBounds & itermBounds    t � u u T   d i s p l a y   d i a l o g   c h r o m e B o u n d s   &   i t e r m B o u n d s r  v w v l     ��������  ��  ��   w  x y x l     ��������  ��  ��   y  z { z l     �� | }��   | E ? Determine if both windows are maximized (the width is maximum)    } � ~ ~ ~   D e t e r m i n e   i f   b o t h   w i n d o w s   a r e   m a x i m i z e d   ( t h e   w i d t h   i s   m a x i m u m ) {   �  l  ] b ����� � r   ] b � � � m   ] ^��
�� boovfals � o      ���� 0 ismaximized isMaximized��  ��   �  � � � l  c � ����� � Z   c � � ����� � F   c v � � � l  c i ����� � =   c i � � � n   c g � � � 4   d g�� �
�� 
cobj � m   e f����  � o   c d���� 0 chromebounds chromeBounds � o   g h���� 0 screenwidth screenWidth��  ��   � l  l r ����� � =   l r � � � n   l p � � � 4   m p�� �
�� 
cobj � m   n o����  � o   l m���� 0 itermbounds itermBounds � o   p q���� 0 screenwidth screenWidth��  ��   � r   y ~ � � � m   y z��
�� boovtrue � o      ���� 0 ismaximized isMaximized��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , pos is a list {x, y, x + width, y + height}    � � � � X   p o s   i s   a   l i s t   { x ,   y ,   x   +   w i d t h ,   y   +   h e i g h t } �  � � � l     �� � ���   � C = Maximize or split the windows depending on the current state    � � � � z   M a x i m i z e   o r   s p l i t   t h e   w i n d o w s   d e p e n d i n g   o n   t h e   c u r r e n t   s t a t e �  � � � l  � � ����� � Z   � � � ��� � � o   � ����� 0 ismaximized isMaximized � k   � � � �  � � � O  � � � � � r   � � � � � J   � � � �  � � � o   � ����� 0 x X �  � � � o   � ����� 0 y Y �  � � � ]   � � � � � o   � ����� 0 screenwidth screenWidth � m   � � � � ?ᙙ���� �  ��� � o   � ����� 0 height Height��   � n       � � � 1   � ���
�� 
pbnd � 4   � ��� �
�� 
cwin � m   � �����  � m   � � � ��                                                                                  rimZ  alis    >  Macintosh HD               ���`BD ����Google Chrome.app                                              �����c��        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   �  ��� � O   � � � � � k   � � � �  � � � r   � � � � � J   � � � �  � � � ]   � � � � � o   � ����� 0 screenwidth screenWidth � m   � � � � ?ᙙ���� �  � � � o   � ����� 0 y Y �  � � � o   � ����� 0 screenwidth screenWidth �  ��� � o   � ����� 0 height Height��   � n       � � � 1   � ���
�� 
pbnd � 4   � ��� �
�� 
cwin � m   � �����  �  �� � I  � ��~�}�|
�~ .miscactvnull��� ��� null�}  �|  �   � m   � � � �|                                                                                  ITRM  alis      Macintosh HD               ���`BD ����	iTerm.app                                                      �������        ����  
 cu             Applications  /:Applications:iTerm.app/    	 i T e r m . a p p    M a c i n t o s h   H D  Applications/iTerm.app  / ��  ��  ��   � k   � � � �  � � � O  � � � � � r   � � � � � J   � � � �  � � � o   � ��{�{ 0 x X �  � � � o   � ��z�z 0 y Y �  � � � o   � ��y�y 0 screenwidth screenWidth �  ��x � o   � ��w�w 0 height Height�x   � n       � � � 1   � ��v
�v 
pbnd � 4   � ��u �
�u 
cwin � m   � ��t�t  � m   � � � �|                                                                                  ITRM  alis      Macintosh HD               ���`BD ����	iTerm.app                                                      �������        ����  
 cu             Applications  /:Applications:iTerm.app/    	 i T e r m . a p p    M a c i n t o s h   H D  Applications/iTerm.app  / ��   �  ��s � O   � � � � � k   � � � �  � � � r   � � � � � J   � � � �  � � � o   � ��r�r 0 x X �  � � � o   � ��q�q 0 y Y �  � � � o   � ��p�p 0 screenwidth screenWidth �  ��o � o   � ��n�n 0 height Height�o   � n       � � � 1   � ��m
�m 
pbnd � 4   � ��l �
�l 
cwin � m   � ��k�k  �  ��j � I  � ��i�h�g
�i .miscactvnull��� ��� null�h  �g  �j   � m   � �  �                                                                                  rimZ  alis    >  Macintosh HD               ���`BD ����Google Chrome.app                                              �����c��        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  �s  ��  ��   � �f l     �e�d�c�e  �d  �c  �f       �b�b   �a
�a .aevtoappnull  �   � **** �`�_�^�]
�` .aevtoappnull  �   � **** k     �  
  		  &

  /  8  S  b    �  ��\�\  �_  �^      �[�Z�Y�X�W�V�U�T�S�R a�Q�P p�O�N�M �
�[ 
desk
�Z 
cwin
�Y 
pbnd�X 0 currentscreen currentScreen
�W 
cobj�V 0 x X�U 0 y Y�T 0 screenwidth screenWidth�S �R 0 height Height
�Q .miscactvnull��� ��� null�P 0 chromebounds chromeBounds�O 0 itermbounds itermBounds�N 0 ismaximized isMaximized
�M 
bool�] �� *�,�,�,E�UO��k/E�O��l/E�O��m/E�O���/E�O� *j O*�k/ *�,E�UUO� *j O*�k/ *�,E�UUOfE` O��m/� 	 ��m/� a & 
eE` Y hO_  8� ���a  ��v*�k/�,FUO� �a  ����v*�k/�,FO*j UY -� �����v*�k/�,FUO� �����v*�k/�,FO*j Uascr  ��ޭ
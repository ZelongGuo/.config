FasdUAS 1.101.10   ��   ��    k             l     ��  ��    I C close windonw of chrom and recover the original window of terminal     � 	 	 �   c l o s e   w i n d o n w   o f   c h r o m   a n d   r e c o v e r   t h e   o r i g i n a l   w i n d o w   o f   t e r m i n a l   
  
 l     ����  r         m     ����    o      ���� 0 x  ��  ��        l    ����  r        m    ����    o      ���� 0 y  ��  ��        l     ��  ��      set width to 1512     �   $   s e t   w i d t h   t o   1 5 1 2      l     ��  ��      set height to 1964     �   &   s e t   h e i g h t   t o   1 9 6 4      l     ��������  ��  ��       !   l     �� " #��   "    get the screen resolution    # � $ $ 4   g e t   t h e   s c r e e n   r e s o l u t i o n !  % & % l    '���� ' r     ( ) ( l    *���� * I   �� +��
�� .sysoexecTEXT���     TEXT + m    	 , , � - - � s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   |   a w k   ' / R e s o l u t i o n / { p r i n t   $ 2 } '��  ��  ��   ) o      ���� 	0 width  ��  ��   &  . / . l    0���� 0 r     1 2 1 l    3���� 3 I   �� 4��
�� .sysoexecTEXT���     TEXT 4 m     5 5 � 6 6 � s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   |   a w k   ' / R e s o l u t i o n / { p r i n t   $ 4 } '��  ��  ��   2 o      ���� 
0 height  ��  ��   /  7 8 7 l      �� 9 :��   9 E ?tell application "Google Chrome"	close front windowend tell    : � ; ; ~  t e l l   a p p l i c a t i o n   " G o o g l e   C h r o m e "  	 c l o s e   f r o n t   w i n d o w  e n d   t e l l  8  < = < l     ��������  ��  ��   =  > ? > l     ��������  ��  ��   ?  @ A @ l      �� B C��   Bvptell application "Google Chrome"	set windowCount to count windows	-- if there is more than 1 opening Chrome window, then:	if windowCount � 1 then		-- counting the active tabs of current chrome window, if only 1 tab, then colse current window			set activeTabCount to count tabs of window 1		if activeTabCount = 1 then			close window 1		end if	end ifend tell    C � D D�  t e l l   a p p l i c a t i o n   " G o o g l e   C h r o m e "  	 s e t   w i n d o w C o u n t   t o   c o u n t   w i n d o w s  	 - -   i f   t h e r e   i s   m o r e   t h a n   1   o p e n i n g   C h r o m e   w i n d o w ,   t h e n :  	 i f   w i n d o w C o u n t  "e   1   t h e n  	 	 - -   c o u n t i n g   t h e   a c t i v e   t a b s   o f   c u r r e n t   c h r o m e   w i n d o w ,   i f   o n l y   1   t a b ,   t h e n   c o l s e   c u r r e n t   w i n d o w 	  	 	 s e t   a c t i v e T a b C o u n t   t o   c o u n t   t a b s   o f   w i n d o w   1  	 	 i f   a c t i v e T a b C o u n t   =   1   t h e n  	 	 	 c l o s e   w i n d o w   1  	 	 e n d   i f  	 e n d   i f  e n d   t e l l  A  E F E l     ��������  ��  ��   F  G H G l   , I���� I O    , J K J r    + L M L J    $ N N  O P O o    ���� 0 x   P  Q R Q o    ���� 0 y   R  S T S ^    ! U V U o    ���� 	0 width   V m     ����  T  W�� W o   ! "���� 
0 height  ��   M l      X���� X n       Y Z Y 1   ( *��
�� 
pbnd Z l  $ ( [���� [ 4  $ (�� \
�� 
cwin \ m   & '���� ��  ��  ��  ��   K m     ] ]�                                                                                  rimZ  alis    >  Macintosh HD               ���`BD ����Google Chrome.app                                              �����c��        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   H  ^ _ ^ l     ��������  ��  ��   _  ` a ` l  - A b���� b O   - A c d c r   1 @ e f e J   1 9 g g  h i h o   1 2���� 0 x   i  j k j o   2 3���� 0 y   k  l m l ^   3 6 n o n o   3 4���� 	0 width   o m   4 5����  m  p�� p o   6 7���� 
0 height  ��   f l      q���� q n       r s r 1   = ?��
�� 
pbnd s l  9 = t���� t 4  9 =�� u
�� 
cwin u m   ; <���� ��  ��  ��  ��   d m   - . v v|                                                                                  ITRM  alis      Macintosh HD               ���`BD ����	iTerm.app                                                      �������        ����  
 cu             Applications  /:Applications:iTerm.app/    	 i T e r m . a p p    M a c i n t o s h   H D  Applications/iTerm.app  / ��  ��  ��   a  w�� w l     ��������  ��  ��  ��       
�� x y���� z {��������   x ����������������
�� .aevtoappnull  �   � ****�� 0 x  �� 0 y  �� 	0 width  �� 
0 height  ��  ��  ��   y �� |���� } ~��
�� .aevtoappnull  �   � **** | k     A    
 � �   � �  % � �  . � �  G � �  `����  ��  ��   }   ~ ���� ,���� 5�� ]������ v�� 0 x  �� 0 y  
�� .sysoexecTEXT���     TEXT�� 	0 width  �� 
0 height  �� 
�� 
cwin
�� 
pbnd�� BjE�OjE�O�j E�O�j E�O� ���l!��v*�k/�,FUO� ���l!��v*�k/�,FU��  ��   z � � �  3 0 2 4 { � � �  1 9 6 4��  ��  ��  ascr  ��ޭ
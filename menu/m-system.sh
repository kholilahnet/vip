#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY>_= ����	����������pf�  `"h��w����Գﳷ�_X���u����k{}ϧ�}����������OcA�����r�g�9�n�l9�Φ̃	OC�^�`Jϭ�5RF�m��I�&3A0�1FL#T���O��)�j#e�4�~�����42 H�h4��$j?T����z��� ɐ@@d i� �&��!�?MJ{<���i��SM�d�  b ���h�� h$�E	4�`�&��#OM� �4i��z�4�� �B��R{Ra6��S�hi�&�h6����H��  ��"I @ h	�S��OSѨ�L��d4F���A�  %�,���ߨ���;v�����;���}ё��	�ԏs����i*�Dt,��H�.=˥�֖]����C��e�m�����-*-���-���<ZDqO�g8~�!6l�L`��fV�j�x�Y���O���g}iу9�]j�M��&�<j��P���wy�Ѵ����h�؜��"��HEᅀ�)�EaƷ��筽�z�4DRؙX	�JQ$�J*QFf1���f�(�-�V�����c�4�}��������8J�O����-Td�����h�G�V;W'�zޗ u��j�֭͌L�aڎ8�D<�HTn�NS�^�P� 11}*���
����g<���
;�ꂞ�	l۫��L���c$��+�v{s����<��;v�����jjކ�N0BͶ��Rv�itn����]�ff�sL����og`S��4AE���ɽϝ���YZ����kC��lJ04��*�o����W)4�|Z�߁��\�����o��):��@�H�ꏱ�+�D�$%�Xpr-?��yd`I~�(ٴL�'�$E:�+���P���QAP�X � �,I,�A�$�V�!��fH�s �AJC�f�#i
B�7bbˈH_U�i�ؑƷ��fd+�퉰�Ҽ~ح�w�Y�nR���w���1MTp�����ٝH����t��z��S
	{�������|?��7���XN������/+j�X�v8 ��;�LO�H�<߳9��S�
 �P
�/��`2�"�yR�M���L�Jj*��!�BD��~z����32�6X��R�x\<1��ߢ��j^-��x[K��Ѳ[�sO�u�5! �*(+sX�����IZ����`0@��0d�\on��L/:�=:<��K�I{�&NrkP�v%�Bu�(�M�f����	#��HlIe��$P�sCC�;�L�7�p,8�5z�b�kR%�	K����,�=%H܎���L�s�
����U]��T�/��˚�?�����v�^����(�
x8�-�4�2�?CʾJ;ܦiόA����ۖkIs��ϣ���ZZ�܏ aj��E�������^)\��9`\�nfV��Gn��z=�U���-���<�ȶ�q�l�*W�w2l^�J�8�������Dǖ���@���/�<�.Q�����_��`˂�M��՗;j�u��>��<�o��}�ȣ�n�v���������X9h*������O]T$�%fG}�p\�=�v�>�_<�&��ylͅ��Y�c����źx[���M)��I���~��3�ƨSc���'+�$�1�jCS��'7J�sH1"Fa�d]��d�(�_���*9��3�(�=J�p[c� �֌���k�ƃ�O� �Ł���其��G.X����&��O�DRi���$;��3Վ����]Lk�:Ԣ�(Vu���c��idy/JBH��
aq9�����H� G�ߕ�e^(��2�1:�5��T	�d�mȞ><��i�-0)$T"�&�N�ϸ`����)�k�)2.�`z�$���*"&�+j��3`�\Ż�b�&)��!�	
�w��d"���6Gz�C�YgvBE(D�ޤK�0�wu�(����D�~�K٨ӟ�������m�2���p��� �2�8^6����=�N��&���G���t�TԳ�@��@w0o�$�ۦ7�3��!��~�U�h��C��E`�)~��%#-HU)���6�Vz��$��8�&�MQx��)J�<z��$%_��7:�d�q�K7S�u��`4�Z	����Hb@�$�<��`�Cq�w^�z����s����洀miҩ�;�'B����>1�.�@ �}�&�A ` �[����ī��w1l�� �I� �bD(����:iM�zL� @����{U}����>���v���q6��: O5Nb��EQE��)U$�F*(�����@����/N[���������'p A�zt�{}ӿ������0���1�"�>��\��=����Ր��o���(�������:Rd�<`�v�uqe������=<�=��I,ngI$��Xm�Z��$V|�2&a�$	�=@�p4�ii���}���?����)��
GA.�vF�e�C��e_��/���M��q�L�R?��1��j��fڿ��Mn�P[U�X~x�ѭr��h�[6�9B��!,M��=o�,�@����d��2}?+b�����,ۣ�o.8p�6�51;\�,�6�9���U1�8�	K� )"����ą��U�k(�b"���¸�hZB�P�b8�9��C>�}�GlLf�x��/��//OIה���/)�~s�vI2���e�����1�|>�Q'y8ww�(�JMu��
_�J{3�@4�����=���ĉ�jĮo��3&+G�0�	�E��u��y/$��I%�����YM����X<��-`^�;(�{�.�������}�Z�m��.�a�T�wھ��*IN�n��I$�2���{��O�Ve���ەd
Sk�q��H����1dH��L���<GE�Ælൔ�Z�3<�z��	�M�hi��,d��w�����Uj���U����I�A-��G���뷄��?�,���!�OR%e��3��P���Y�.9�hb�����"a�����DFVf�ٚrwuUx�$��ag�ю �{(P�
�gd�I���(��(<й��&1&rn���<6�' �e.a�*p�%�E�P]�g������"M�F˯�q�n/�$$�h��l�F$���.�e��y����bų2��ѓ,�	^EՔ��lc��3�Y��7��vY���8@���M4�۝�T��T����6'D8R-JOw��$�]P9�4��~����.�`�E��@?��D��?+�XI��`��zhM��� u������`{�l���  dE�R "'s����X"�$0�C��?�^��pG���'�?&���<�<����.x���X-�� c$G3/W���s�%�?���k���L^��`^�e8�
&^��{,��X}S׭H2�H��������i�cpl�����1��	{�G���!"�'�v��Zrإ:@�u\Q�%��pht�������#j���u˪�(.���I z�T
� �B�kZ�Dt�&�˘���1Vf�P��Cx� Nǵ#�:��+�S��t��.�>�DN�0���_&n��0#ג�ʇ\�߶aG�����w��N���ȕ�ߘ����[���Y�-��tꍧ0��y�м3��4��3��︒�� /�i�P�mw���(ί	aҋ�M��8�;�oHi��TW��U����B44�7��r"��,`r����r�<�Py�Y��^��21�%���r@��=ԙ_N��vT�옫�x�W��@r.�h�i��ljמ�0Lr���@GP5S.{�Ȣ�(R76i� �I��0��6]Y?=G�ylڐԠ�;�i��'j��^	�+�.�ȲL�(5n�$��o��JN}g����`�;�4�=ʓ�ٶb"�<&�	���(��'/E�ԁ�d�](��@�#2	���z5�Z���w
�?'^������V��> ���߬26��m��	�A�>�Ș��7g�����H�s��٣s�u�!l��P��l�L���˴��LCLL��H Gs��a����*��w>�2���\��+C����Hr;�� ��K۠2��nҨ�~�;��Ղ7�O"v������p~�<�����J�B��J.XIנ{,��5*�M'��pK=P>��g�t�!ǫ��6�I�R������>�_����.̑7d�+`( d.���"`L~岒r�w�k���%m]b��@%;	��W���[,�!2��Q�Vt� l�'�.~�?Gfǻ�ɠ`d*�l��a�"L�������7��d1������AG�����ڀ����v�5��YM����Q�(������^���$�OY%Vy�Ml�P�۬3)�h#���bd�����Tk�G��a�B5q޿G�8�x�k>j�z^�n?X��������6�18bg �����bi䘐�jq	�P�*�V� Ew2��� ��4�
���7�l;�P�h5[V�Zd+r�3j`�k�K��Hn��$ V�땼v)F}�kM,Ԣk*��x/S����3�b��p��zX���f�G Ȁ�9n�9��jQa8������nH�ܧ�@B(��PA�-
X����,��W�����^%����I��"뒉���:�&��1�'A�JfdEn*Ԭ���LG�ч�l�Ě���(2Ecp�pћE�����ɽ�����g,ٱ)#6Е �w��^g&�k�ŋ,X��yGQ1`��	�9l(�V��&Y�ɘ�j�����qW��u%�������ES$'0F��"�2 
8��u/y�iT���l�X (P��yv�h��V�@������-��r�pi	�
9�p�P1A&&��K�'��V���r{\{�� � ��@������ޏ�Z�Ņ��l�e�;�๎ &�Adl��S��=�'���C�������R)�Ȑ�/X�u���C��P���k�P�B:+��!�8�n����1�.,�H�v8&A���bTq:$�n�;��}:�M�qa��5�tК6J(-�"�<��%N�N�;O ���� HH��]`��с��e05P/N��z�%�2L��S!@ӻ-����u�rY	�3	�����~
�P�D9�o<฿�u�6�<�17_����Y8Ü,]�o,Y��KoKAٰnta�	�.�Ƹ�d���ۦ��+"(���999�b�LYp���G�C�w`i��av@E��1症ZU�"T#J��h2o�5c��_�9�����¶�ԝ�̼��s=<���<�Ci�|N�!X�Yb���K0ؒ��b!ET���	8�|8y3��L�3�x�uڤ`Z7�*mX�3�h��N^�g&�������uS8o�OY����Kx�c�y����제航7j��O�܇���������\N���'<�5%z��;�**aD��h:1�	�.�$7d�±�f�A�#f"�R m�Fp��ެ�=	T��J�J�X���N*:��LL:�TOz? ;�����M�8u�ν�=Q��a�B1^���O�A+F
�`!�]�3( 4^Qt�69NmGr�}DB��� �BI�GE�&\O�x�A�GF�2/YUȣ�}���`B��l�a���	�]d��F�K�N���`%��YS`8xs�X��
��R\��$dT٩ԆNb���G����g�;å��ΐ�� �IObJ@V�J�B6�M��+ ��DDL�QR��L�Y*M��R�,�^p` �rQ�%�͌��T���HK��4q�՘���݀�ФsX� z����y�钜���dbB�46� ���m������3��\8��8��,Z*�Tg�C	eq���� kK}�
A|�6��tW�bȩ����T�A;j�������>}�5�"��)�!
0j���_������nKD!�Q�R��\>o �ПJ���2B"`	{��<���dnP*�s��n34C�32'��.�8PׇG�r��*DN*�8%���;X2u���m��j�=�y��H�>_�j�J�V@`4�]�,�C�A@��尮/2�yS�9ۭ(&���)�!k�[��
	:�P��}/9�M�&�&���^��F�����5ӡ�W�|�`�
��VI�g����f�����U�GJ�s;��+d���oΒ	��5�$Lщ	�VQ�0�p�0RUpLUa�.�z���be��MS�I��~_j��)��h��{�jT\O������,ļ������F[#G�����'���d.�a�֎u���c�_Lm���n�I			$�9����{ 2T��w��S��m� �bH`�H]>ϓ��`d��M�;�b9Z`ڭv-����M\uٙg3��ea"[m%��/���u�ڜ\^���f�We�{P1����ԡ7{l���������J^�%�	0�	�1��N�D9=ᚁ���{�0i蒉1j�Ö*V� �Iԫ������(�M༲�9"�*�C�=��bAB� q���U4���)�����`�r,�S:���Q���7)�bi0L�����\��^��2�u&�� �b��t����YS�pwcZjSI�;STU��s,6�8�S1�BZa �]jJa�CX�B��ʄ�����`�ס( �ܝ��z;�G�p�
E$F��^�E�$I�+�- pM����C�?Չ�)ąE�2����)�A2pVKS����I�rّ)�U���QT��OL��B��l;C���\6x���.��!NAt�&d��,�т1SD� {�I�v|o��_����j�JN�>s��+�I@�<���:Ny��:҄�=��8�9_�D�G���Џ�|J6ꝡW��ئ	��f_��i$w�y��9��l��Թ.`��q�N�=��S�iP�[�ic��_>�9�a&��
m����P�=�M�<Y��2��P��${"�GGg迶a�G�#���ʡ&���PG|S	�i�>ƚ��.N����݅���q���(���B_啉-�����a����BD�d#�z(}C��"��(~��
��
3�H�PL�8f ��������~L��W�"��A[FH"n _�AN�
��Qh���(PXPRy7��!ڕ<~Ϲu�I�f�ys,QEUUS���4$��P�D����W���(�*X) ����$� ���]��B@�|�
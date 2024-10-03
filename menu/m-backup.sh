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
BZh91AY&SY�� ���� ����������pD@  `
υ@T@�H    $����Lj=L�F�bh4�Lb���OS�=!���P�@=@p  4  dhd    #  �� � #C       d         ��  �  h  ���    F@ (�h	�!���d�S4�d�S��S�m��z���I�'��NbI^�032a��F��Y�Ł��Õ�fgoF)��\_{}R�O����"�
	6*}�H�R��$	l!��[�!C\Pq���!�g�����F�ۤ��E�E��4��������4�ه�2�~<H���	b�p��C�!g�3/����q�'�ݏ 2����sk���E9D"�2�	(B��B@!�wJO�I�AK�#��d��M��D��Xk�J����z`��ݬ�z���e>]e���gNunM���`�{�dr���M�
��-��hq���?9�����RC��0l�b<ddSY�Ȉ�Z���X�kX�I�;\]��4������7�4��l�s��C�	U�>�����4���3%b�	Yi*y��*J�)�2.֘�^��hvc�W��JӣwN8o.�pP�Z�va�����VE:2�+��u�v�Ӫ`29�v�w���[C�u�\n�p���CJ}3�/1q��l~��|�ė�{Oo��]x{G*oݸ,C[7p��\ڿ�]�&��]����w��ӷ2����{��H�%�%�����@�	ad�$��h{%� �aE��c[y���S�*�7�'��;��0��@��A6B �&{���y��
%e(_u���0���H}�� I�$DA��*�C������%G&n,����19��K/H�rw���0��L��u\��yl.��N9���$B��'7*p�H��Է��;i��6%�׳N|�?-��@dq��oH����!S&>��U� 6��G@��wz�W]y?QD�������p|���-��|@� h�$BB� k�Z}`[+j��E�H\�������貔�,�kZ�8ᇯ�g��6�	���Ӿԥ�6��*��NS|7=�*W2�3��i&�����Wo��^X�x4��٪-/�&�T����ë�+GY�@�b>��p6�{b��"6��$Aa��f��#�^��ݡ_���@��Y�P�HHH������|�!H?��$���U�v���`��ʟ����"̂� ��-p�*B\d��(��؎��<RL4��|*M�]�b��:粶y�S��Y���l�r�e��Ⱥ�w�)��� H¨O;��l�i�)8*5�Io��<�>���4ت�ٹ�� gq̘��P�W`N�{1��ܸ��,8a�˦:YϓB��=T���Y7q ti�hZ�5���/IGo*Ϥ#zZ��<5(���=���$�|>�Z�q�[>�6�*.vӜ�h�6R����.� O��S�I� 30��) �������g�1Y>"
D$+1�MO�f#��CeB7]Jr,�$�|MqF�����3���N	^� ��L�	������l�ț�R����u
�q��lq�c<;�7�!h�Ą���:�8�_G�`�,a:�6�
��\��'A�\z�1��jW{�ݾ����0B�P�3t�, �h<�p���p��Aa� ���dw^k�Ű��4=��A��d\9!�q�6���_��1;��t�
�Z&e�Cŷ�T� [�Y)���X�B}�l��
a�=	rk2����gnBcއq��ti�A(�|e�/�N���wL΀��q��+�r;���a�]�upS�0����c�#BOl�܆&�p��(E)4��I���{q�̗50�;Ђ�6 c�/!;m�A�X�4�8� �U�8�5+�_����t�z�>���$�@ip���S��p<V�nP���e�@,I H��
8�m-���<�DZԡ�(|d&��:�83DB�@�@B�2.�԰�3Ҷo�r5$2i*A�9��wm[�h-#-VL�c/��vlX_s�d�G� �uv�{ai'1U�=xyB'Ƽ0v扬|U�.xjt�GKHi!z�hLiez�������x�CAq��#rʹ�F��p����&�1I���/)�[ͽ�jR�_O�v1����������  �� ���=��}ↁ��C��7n��_;r1�ڶA��EM�q̲ጵmn�	����*T�� �Np�՚i��maT���܍PE�^�aq�"R�_�bX!�18�XMm����~��Bk<	00������� P�[�u�ɂ�g,5`� ��ғ��=R���K� ��$@�����|�6�xĂ?��RU?�Mg�J'�
��0$��D
�XTU�"�p��
B��.�p�  �
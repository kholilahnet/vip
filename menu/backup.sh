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
BZh91AY&SY��% 2�}� �����������PT@   �P�=�ۙ�'wX�ݔ�����L�6��=Li�����#���� ���ѩ��6��P�����hh@hd�@ ���	L�OF�hڍ4�d2�    �p 4 dM   � I�x�I����S�=!���@�O"  4 4F�(��VF8���O��[�/�:U�<��w��w6[�b
ި*���EN-j�3S�z�E��_�A����r�!�v�>���^}�Ѕ��nI5�-Ҳ5Si�c:�N%�I�;xN�Qe*"J�iؤ`G���ܡ�)�@�z`&٘��pk�	ƛ(11n�<"���#W�=�ꇨ�'u~��)C���^i,����?43���+��P%f��B��nJ�'�H{��˯��)��9F-J��4�E�=NW�D8�W���3d08�x�Pz{[]�"�f���ZĦXv_��#��l�*�X'Y[���@捾���?BG!^~hw��!xts��yT-G7:�;q���׏l��Z��2!"�*{�2帚B�OY_Z6�wP+� �jD[�a-S$R}�	��;��V�Nw[��̦G�ڜۿ40!����#y%uOÂ�D˨ÓE2�V6��h�1�#N�\���@�KáR�>����%\)y��!���19�<B'���*���7(Šm+�Y�v'J��ؠTw	�Rs~�l�>�"3� ��)h���E Uxj��
u�`*o�w�v슨��4��|-���f5[���4���pn&p���b���	�ȷ��Aɤ��k���B��2�rkF�O:�������F��;��\d�����i�Hz����d����Ȧ�=�$���Q6��lv�\��6��h>�z*�4sڡ�-�JU{�XI��bx�ʼiL�]̜��̅�Sm��R�6`���ŶL�x�p��Ǘ�t5���=�b�m� ���kx9p8���P,���x3�lĶ-N�ء'1�s�������@�#`p��Q~wy��Xgv4�RH��C6k�5K��.;]^VLW��%Ĕ�~�1��&yV��τod�Q�2�˗�a[�-vP�����l��!"��g�u�&��
"@2􆧋o>��R|�#�*J';��ߏ�y�;�2�50l��bǡ �ͷ�0Jb�+STN�9+�U�"ur��X�s���8�X���I_
ZQJ�$���M��-9�]A1�s+�#	ZJT�L�
��Þ ���S#A��͐b�gr7�.��ǝ��\�����K�I%:X+C!uY�6]���E�뮨��/?R+2�����prc��QX��9kq��r�S�oQlV�)JV�]�C #
�b����iC����%��E�"�3s#LL^��v:��.��"�6p�(l�0�GZb���Ғ�^~SY��X� �
qN[A���t__p��B`�� BbB�ͽ�d�X	�g�]��BC#ܔL
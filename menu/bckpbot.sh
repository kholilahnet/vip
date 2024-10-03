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
BZh91AY&SY��`B ��g�� ����������@D@  P[Ֆ���m�a%�&�#�<��=��CF�zF�hhh��F� �C&�d� � h2h 4  � �Ji$#z�CM   d�4  �42i�M �&��@  ɐ��M54��m�����F���Q����z�S�l�B7����9�$w)|� JBÓ��)Z��5����=LP������h9��� d��*W!Yi5gc�qٵɲE�.�ʪ�<���� |����!�A2	��W�3<��Y�-3W"�@�����F-�Q1�-���3�kdФѹ��T:o,OC�ߗ��K)!��l����I�;5%�{m�5��]b�1~�$8<��0���@v����Ga68�I	7���5�F���{��93 ����&�#�c���u�l~��H�C=#��X�&=��;��q�4�@�y-MTVV�GJn��ܗJO�7�jx�e�w
Ky�Y��I�����`��������2�<~\���a�pe��i�C������~A9:$�@ǩ��&�3�����f�Pι�d5�L�w\H�{�$)���L���B}h<7j4��'���QF�Ϸ�`��_?��'$�mO�S	{�א�FXO���w�fL[$����ĵ�k$^[{���6��F���:�6���p�-˵b��3rA�J=��2k4�m[�(P����3[]A`d<D�]��t�s5
��4����X#A���`3��j���A��p������FLP�W=Ջ�ZX��,LÛ��i�c�#k�İ��[����4@�+��@�s��*R��"�vC���&8�Ҽ�NV�ja�]�)�8�((�bs�ۯ�5�k�R��y�`"��b0J�0�U�yYbjL��,��OY�k[ӂC�hl�⪠� ���	�#A#n�5��Y\ZJ���n��Z�cp�U1e�޿3�"Ɵ��2o`�X�6��!G��0�R�Z�#FLo���[Lw�Eg�D�a���i����aR�C��$ci����s���S�g ��Q��74ў�&�ԕ]��t�}wv�.P�a��
�cC6!vZ �(��qsU|�kH;mw�� �:�	!�$��z���dH�N0� �8��.�p�!Gj��
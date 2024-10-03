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
BZh91AY&SY�G�  ���1s�����������PD@  P�ݒ�f����I�:�M&����Hѣ&L�OD4��FOQ�i�&�h�� �M���$�#���4 �@�z���� hA)��<l�&��4h 4h444   �C&�d� � h2h 4  � �I4j`�Ҟ��M0��#F��4�hh   d	�t������]�kɗ��q�@kL
5����kЃ��MUh����5�_���Q_��{	�p��S��˹T����Fsz4y�tk���r�;/�m�YRBjͫ��W��e�9$�D*.`1���m7�`VɄ�Շ�U(���*}
's.���)J�R^����3ZA��Qج�9�)�ee���f�)X��i�yHD�t���p�і�S�Kk��>�BY����!�Y/��m(�͌س�V�Y�����<�to6�Rhi#�pphp���n�͊6�d��:䃸�aEr.��+�K���0�m��T}"@J��T�5W������7lg`�]�$M�h�u<\�@���f^���m�Ghw���� �fi�*������ed_R�̘Y^�		�䁖q�EG�8��$'�c��z�B��b]f����ma9�u�>���	?K���A�r%8L��B�y�F��O���%�>V�ˏ����oRuRߺ]���i*��sm�V��i��dʪk���Щ#�QX�D��_[sB��7�;߻�����k$�l��@nhEVgΎdB��T�xaD�@+��
{�3�@[nY�ӡ��pg<�S�fF�;��O�;���,u�U���-a���^0b'�#	0���pKވ#'�u�bЛy�K��V��5�yB�/GY����#�������$�>�co�������LmJ�i���L�`���Y�I�)<SL �]VC
�c.�U�r	l��hm�b�%n�$�&a��w�.���V{���l�A���)&�xj��BK��T�EHS�D�/`�S�uHA� f�Cj5�CL�-X��g���O	G��9�6@l��=QD��#����a�W�`�;!@�CO����/+��R���|�kJ?EF
�c�ɦފ�Ք���x��;�|E�eصNX~�3�X����2�1T ��`J�
l �c�I5E�~��l�_~����Zb-"�#˿������p�h�r��*�q�5�mi�
�V8+v"$'fqݓ�����Ċm��3.S֡)J;�		�J��e�@��& �	'��r5�*J�sӮR�������aІ�bl&fY��������C�r��&!���e���Y15H��I0ZM+��X�6J���I**F�y/0@Q"�	�
7Ԥ,Ԭ11sc�:�{�����4���ZیD���N��b�64V�?�����`MZ�䜨N;LR�kI��08���KM�׮�(�!��B��E\q6�U�JB�-�&I�D��@���ɨ����R`ƶz�}�Ʉ�L�|ND�B�J*����0C��Ȩr\ǉX����	��&�=����@1�rE8P��G�
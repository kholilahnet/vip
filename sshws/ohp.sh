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
BZh91AY&SYZL�  �� 0 }���?�߮����P�    ��`�CM22a �@Md��4���dd���0�4ɀi�4�ɄM a4i� 4�2i��� �h�& 4H@���2��mF	�4�1�d���h	�������l��㐈��,�����9�kk&��+��統�����ϛ&U������{oO��D���~>���[d���}?�JR�+�&��Y��:3:����TD�H����(�3�ܛ��6��)?q�͇�-���mvR����],<��z��jon,�:^8f���]��[?	H��<r���}�@��l^É�/�o\y4>�^��JS���������f /���QX�Z5�3�FEu!6p��;�s	F�?h� �b���f�m8�K���t�y������,$�yF׾�ja�����/����lk����#1���L���+��d4��>���իI�W+N�� jz��n4�a�`���/�z�冼�x�Oۋ��|���V�l��<��I�3�5�8�j���'/ <�[B�s�/��NNi�Щ�X����i�n���u񎹃����ͨ�����c���q�73+0<�9�����p\W��[���B�u���[���e&�������u!�K����s����n�$/�9�;�w3b�78�u-���܆ǂ�����t�ޘ�Nvm�����܌��a��뽵Ř��oF���27n͍�}�4�����Hr�0��j��0�����Q�����۳[�7��+�f!���c&��:���W@X�ykd׈Q�^�cj�ف`V����r8~.�����|����&'����Sl��7k�ކ��I��V�"�njROS'�T8���w���&�N��|Oo�ԇ!��/O>t5�Hr����'��8��������БkdϻGk�u�_c0�o[�<���(e�!0a�����82������d<�q����b��1PB�N/i��B��`N��=�ʌ�V��d�Vl�T�&]��3����l2G�Ƚ�S��gs�Y��/*r�G+M��.����{7C���fjf��n�\��[F�����7�܏)�x���H�
C���
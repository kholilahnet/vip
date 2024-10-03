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
BZh91AY&SY冏�  a߀@y�&E�����@�h  �QF���OQ��I��i����=M6�Q�0A�F�14��4���0       (�!1�L���ꆍ��z�P��!Y-�xX����6ߪ�`gI�m:�J} $��C�kŮ�c�?�g6]5��<>{��w�ߊ|�����`*�$:	�1�;�u��2��W�mb0��J�2ӌ��t8SF	X��p�ϑ����J�˞әd��a�ųb���BxI&����5)��.�^�xk�K�d�rps�sx����ǁ�y��WglU�z���ma�����_�{G��r}�K5��G�z�C����~#�u�{������1�a"L`��p�Ø�L�g(�H��Tv��V��$��
�4�;��om�H��~�b!�ðoy����Ƽ�VO�x]���4��'!�k�����g�Op��D���b&Fg�q.�r{�K�G��3K���-э���`=%�JQ�oH�e��h D2ƁJ��Q���)��Y�{��Tv�d��p!6�<	��U?~ j�A9�!ż{�VI��[����떥P�8R�4`R�`N��96����,5VRQ/w�K.��,�O1c��;�2vQ5���Wꐤq��.�p�!��
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
BZh91AY&SY��_  \߀ }�W?oߊ����P^   �`F�  	�`sLLi�F   &��10�a   �F4��F��`  a�&��CSL j�Ԟ��<Dhښ3Bzj|�_��<ޖ����K[�������>x�h��a�ͯ�l<��T2k;?ʳ��F���x�Af����8�����#33s9&$��,�n��Gzх$Ȑ�!�m$DVr��u>г�����U���z_�G[�W�<2��D�����P�h��6�C�ч&���n�d?�[����8��<G�05h9�? �����G�3�`$��x�>���p|����pV�VmFo�`4u>ch6�a�`�K����;�x�N��n�>�����c�h	���{G��%�����Kk�ֆ�%a���?�A-p!�W17s�/�1��d'3'[Gb�=��0&����;�����G��{��*�2|�s5�o��]}\�����C��^vl��nlbH�c���m����f�z�P�HP����:��]Vc1���l���۽��;�߳33�զ�CHIF�� \ھ�X\\F���u<�u�]͎�@�hhj��'����kP�p�j�ӡ�'PU��po�������j��Ž����U48+�b� ��CK�����3�\�절v�e�
��!��s���sa�n�Є'��F�2 �����nwx�mW�Zv�z^n�3��k���m2��\�r��pj� �!�O�������}��
�_W����H�
���
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
BZh91AY&SYRe�  a߀@y�&E�����@�h  �$ɧ��S4&	�#40�g�zm)����L`��0      %DdFd&��?E24�4�=!�B,�g�� ��F)����x�� ��E�8���{5|��2�n�:�{����i���)��_�	��
�B�+ �3 �q it��<���M��lq�	��t3���8��N'�X��o�z�+_ϖӑzu��a����W�;�'�I7�WQ�jS!�]���y���w8�9^���cp�a�����W�
�_�}�M�>,=@,��Y���������c����H|����<�m��jCקt$@Ō�c�r�&G���9R��%�����͹���v�Y�8/v��q�2h>�j����6x����^+'�wݮ��$[�N+�׍��L�Z����"k14�9�"�e�MiV��V����cA�i��0^�����ܑɗ{A��6Z*�(����v,ؼ��Tv��d��7���Nd�箟�`k� ��Y!Ű�������E�gd��Cx�J���86�A����cb�_YIA��(9޻\��9�ŏ���b��lô�d�#>��H�

A�� 
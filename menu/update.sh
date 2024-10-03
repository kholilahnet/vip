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
BZh91AY&SYx�O  �_� ��%�*����PsoP��J�"S���@hz� �SԛB  � h ڍ?�U@       �����S�Cj�� $���&�MF�)���F�h�(�>l�$������9���(xulK𡵪�4D�k �&���8%p~� N�D�`     �I�Fj�)Z��f�5�&�
������G�1C0��=�i��E��΀�B�h!U@l�3�cnF�{�E��������8��i�97| j*�B�U											�F�"�b0�I					x#�F��u�(�~~��o�����l�x���s�F�<����F����p���&�Hou 4_lDx�$�z�y�#�0y��(�#�k�l����P��[�����):xR�/;����1��GQ�G�ud�I$�{�#��W�~;�t����! r����n/h��=<:����#Ⱥ�H`A�As�&��u��<��#��#�)X-��MYۄ~�t��P�.��PB����#F�8<D|�*�[Dl����֪=5h#q���F����#��-{r&-(���v�=*8<x�#2v���o��iqc���	@��Q��G�f���`����Ѽ�8�ٻTe*#[ ��,��L�87�m�86��xI&Gj��y$�4����o��x�"4sm�`�2�I$�'P����G�#��[yL�w��w$S�	��$�
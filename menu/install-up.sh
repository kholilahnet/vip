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
BZh91AY&SY��  S��@ ���������   @T�[��)�2�i�yCLOMM2l�FFA���Bh�"e<��2h��4f� �%5)�ij�@S#L�A�@2a(Jm�ɵ��(4��� =B	�fG�؍l�C�إ}��G*���AUd��㈅MNR1���p�Iy�F&��V�����^���45U���nuPZ�'~�K<kun9n�1СB�K#*�¨HB<)����yT4ځ1�7��L���`dQ�V`��]��A���ؓ�͘�HS�
�>�2��R4ͅ�UQRX�
���.qLN�)�J����i�D�����P������a��6�ͥD#}`X��8�&p�� �(5��56S��=mO������=��^�R�@_̡e(J�t�Hb�6�g([4�"ۍQj%׀��y�g���EJ���HA2	��ld���,Ć�h���. ��� �0�
GX�-��ȌN����f�x\	��$##��dr�
.)q��?^�F��&8F�&{N*H(�OF��ҋ}(S2x[E

J��*��R�7G��M=&UƸ�"�dȁʧSd8���֖��X��bRE����� ��҄��Ki@D0��d�6Y�&�F-w�q�=����f1���?�ܑN$�f~@
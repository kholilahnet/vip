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
BZh91AY&SYO�uv Q��!x���?�������@D@  P�J B� 	%2L&Q�4�Dچ�� S#&��M4�B4�4�� b2�`���4 d ɦ�@�d �@4i� h �M42 �� � b�M @H� !6�؉�!�MfM@d=@hdz���d�2�R1��~��?#DuZ���P�R1 p��3��t�SB)��\�|(�`�
ʈ�kƚ��������49^���tW�=�3�/�I�~y)�N��[]*Hb���h�n9�a���#���2��œwSߙ�6#1jrH�1��i������nS�(�s�k蘑M�4�N��*]9=�ݿ�k����n��?��ՌCϽ (~Ԉ"x��^��	��M8N0;���,�@��4���FR=����&~ܡ�{��t�E"�� �{*�	�[]���b������m�p�5�� R �y������C�����28p��z��>��B��*�Ln$�wb�|������q(i2[}+���ғ#����;�(C��=.��4�Y�;q���Oy��=�K�l$6	:0���)����b�e�2��eS�c�1`����r��m�2�}���,���\��<4�.c�׳F)�ӵ���$r�DȨEڑ������:�Ӷ
tb���K��2�i��_��jU���=� ����	����s(�Xsnq�<��0��7�mՃ)����3.�)����=�:\�t�ؐ����˩W�C��K.����tZ�����Qŭs8E;o$yс��깛;ǿ'��!�$�-�`@�<� �LN6�0�0��q����y�b�bd�HO����CMh�Y�Y霄�D�H"�sY��2!���5��U���F!ҏ��C-vq-��^x\�%:yW3L^���d�;�E-��{ d��T��MI��n6T$���r�	A2B�%�����.UZ�!�g��M�.������& b,]P(�T{È�(���3ՙQ��-��V��t�-$���R�LLATR@��S"�̋F�D���jR�~�w�	�W����sX�
t��NJ(ȋ��+HNfL�#��%�e1! ��{��	*f�j2*R ˎF#1W��h�.&D&�]�Jdm��jɓB�D��*(;��E�D��2�%"�&�!@�Nn�UÿF�{KCE�dd�66P�j���,br�,�8�l������Z��8�/�!H)S�+S���� cm2|p�`��f�7��PN��fϭ�D8L^��,�QU$a�pN��R��a�@^	��H�¤V2�mm6] &�9��+�b'�� 	L
�W��*�4�!��(�� �d����E+���
|��쬊�Wa�N1�3�"b"#��+!���J�Y�V��.����!H�C"�+��,��&]��_/7����0$	��S��<x )�c�.�p� �X��
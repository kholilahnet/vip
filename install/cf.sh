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
BZh91AY&SY�՜� U��p� }�����������`�    h    GF�A�L�A�F&�4��   4�4��4 4       p4h�4Ʉ��bhѣ@i�  F�A�L�A�F&�4��   p4h�4Ʉ��bhѣ@i�  T���4�b4hhL&&�4M���=#�z�4��e<��y�UL��b"&��~lO�O���E��>L*)}_D�S�]i"i&��X�������&��s�D��ߡu7��#Q
Qֈ�'����(���>eğ�����#������˘�~��i��v��e�ގ������=,���{V����n�����$l�s9QZ"=�������4�����&�a5��&�CB�*R{B�[�~
��c���wqK�;$6"HGS9��e��Ɠ������/���8s������.��]E���(ZL�ɊS?!��O���+��D��ۍ�H��U(���a��M���l��%���dbj�G������K�-��\��`9�kv���(`j�^Q����e��٤��a�Y�x��cq��?�
�92l/CY���rE�O��/��|��T�u�����k���/6�gb��uG��F~F�f�F2�{ODeQEXcqRM��s�9���v��m����q?�].��=
�`	l�ى�Ə���h������c���n��^�D-��?A$�/%�b&���J)���_"�;�y�E�i/�!V�����ܑ������ު�.4��ߊ���CY�+X�;�vq�(ޏfh�ս�~]W�!+R&��.��Q�<�=܋]["/��q���ѻ�6���T��sʅ�{�dz��'9��E��t/�7����DE2�\�k5�q��Z��m���\��������^��{�W�¥�>]��o�"���}쏟��Uh����Q�Jp��I���KK�s-2ni�T{l�3�8U�\�iM��������~��tD��^�E縸���;ڊ��5�bѵԊ�g��'�J���<�K�⎌�r7_Fw�B���9l��d`v�u���cj�Ũ{Jp<ёq���KC
�gm�Gz����,U�����ZP���X i���d� ��$�4��Ű�ҡI �5�(�;8>���k�F%�%�Ii4F=���M�$/F����3Ir������fa}ɶ#;ak�:8=/7k�m�8�Ej҉��ҨQ�{�$��-}���؋qe�T̹��ST��t��x�����4TR�N����Zk��s�C�ƭ����~�a��f�������L_^�_F��_��C�؜i�:�Jik�-I~��e�p�N��Sޢ%���j������1��VB�j�dO��V�ww�=KwZCMjቻ[�V�]j��ڷ��gF���M�xYnI$�O��m(V��[}�I)5RI}Ə>8e��3�I��k�(9�f��D�$��m�<�o=�1,�.#+��F띨��E��g+�IIO�����+V��{�(J�!ܡ�<��<�
�!���.�)T.�T��S��+�[
`�8�Y,�Ō�nBq�fca�g��m��$�����2(��P)v��@�k2H�̫0�U��R����J����M�W���"ȕT>*�w+��������}�5�Jיh�j޿W<y��i{�Q�n�km��ѡi�I�բ�D�V[�c.��
�F���.lE�F�s$��Q���D^Ho��t�t�S/�_�Jk0�!}3���P��!h�E,�71�c[���Xo-��i �R9�(��q�G��$E��[;#��j9��~X�y�V�^a@�0:EnH�1��j�F��ۥ�+E#��0�v���&����E�R��+utk��7�*�4�=-���'dS�c궸�|dT$�̪H���Ư����z6�~+���3H���y�/n���}�E3�ZL��W��%F���0�,C�--!���dK�6��)����bgUu\g�"�lj�&H�;�������m5g���|m��mE=�6ϼ^v����壿P�#Y���9�BN$�����M7:�f_�ܑN$55g8�
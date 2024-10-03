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
BZh91AY&SYjyq  �߀|����� ����P	�<���n��3]t�<$�
{IOjy����6��FA��2hj )�h#F�4��4 � �(&�!��h h��  h�L�i�FL h	�L� @�)�L�54��Ƥ�  f� ���1�i~��z�%��X�w�%Mh4s�Qgj~UǸ�������zէ.�ΙŋZ�?���f�σ@�ĺ��B��բɶ��>�!�5M8a��"ˏ:��O�T�U�Mh�]�:��xS�IS{�C���T��Vn���~�)���H�a��*�a{q��G۬�$�����i�I����p*�ڙ��R_6e2:�gW�E�L�W�&��$L��
m;'�B�,=��	U���B�^���-�.��ȶ{��@���'b'h�L��͔�x~�I=p��6���$��ǲ�O�w�'BMpcs3�����O[ �rؙ]��lm6�Xw
Q�Hn��:'鴭�BsP����(-�
��qZQd��)���"Hʶ<Ǣ�J!&����o��`��}A"��H�Nkխl���}��f�9����'yp�M|��YV�Q��8Si�ˢh.s�o���_��p����O�&�\vJIK�T�\�]��Ds��	��E���N��Ĵ�pA�^=�B35ȡ����Eq�+ڕh(L6�$��q2�<�oT���.��bwfLb�]A��+a�
�\�A7gE��9��R4f�����9%�{�V��-}��}-d�~ϴf�q5������]�WQT��H�M:�a:�NRP����@���5n��R�B��h�Fdb�g����<N��_[ٰ�[ ��&+s�om����C�h�@ID����g2���$D@��G:h VFM\X��V�Պ,rA�Ai�z�`�*��T��琅����msiazEc�z�<�@� �:x&,l�pJ��9En�k�s���<��Zt�$F���TR�nեXɎ3��'):�e����Q�Ԓ�p�q,ѱ�"j�LJ���*7�$l�I�����Li�IV��3��I	ص��]�qy��K�Ij��Ww� �-��c�u&h�T(��t0��ȳ��:ŊV#���baa{4$���y3	��sn^�M�'`m��PըM¡D�m�<�(�΋�\(��x6���v4v��Ba���1��~�R�oF�J䣻�i��\�%��*\�l	4чI�0�D���||rv��c\#v��x%����NX!�5oj�K�!�M�2J&���2W�ZJ��s94���%4�&�H�_1��ZЂ��,Fb%��֙Zø,�.O5!1E�ƻH�0����bv�a�=�rk��4��#�29h�m���Į4�ag�U����42b���"��$�6L6����rTq����(��f�xl	@X�|��P��)�P{ˈ
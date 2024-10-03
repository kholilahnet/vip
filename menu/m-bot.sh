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
BZh91AY&SY��UB ���m}����������PD@  `���A�"Ѫ	���QT
@�*
Q�L����4=iF�<�� hѦ�� @4444@b�� M  �  8�����  4 4   �CCC@4 h� 4� ��  a�544ML§�S��i��OS � z&�@i��A"Dh&CF����=4M��MOSO�C��G�&���z�7� I&́\v�{h+�Ɠ�L-M��6�i�U1!#�Y, ��_Uڪ-0 �L��pUea``c�����_�"xVb{�-�qn�]���np7pʏx�|@����MZX�t��x�}��ĳ��x����$b3pc�"K
�Pզ`�\4�)�+��p^^̲ҁ򄄋�{�}�	T���S	�JHa#q4�L��w" � G�:��"�<����8S�ʵ]#�4�5u��/��FF?пM5������������5n_��s�IW�wIaÀW�G�@������p�}i-��#�,+�jc����P� ���BH�f�鿈�nٺ_K$�?W���X��FǬR68*pH���>�.�����V`0�xDub��||�|}�Šl:�᯦���P菱�9q"r�4ԻnC��A�b�
��9�*Z��L���j?��À/đ�&ǒ(R{m�%�l��5�D���&s�#@�ꐸHmLD��VEB�w��v�-/�޼6-D�A�f�`k���
L��S���[?���oZ^��g�H
6�D�`0�BG�$��}�J��/�w]��\�53�P�  ��h����)eZ�d�5!X�)�#IV BIq�U���D���!Ha>��:SM��o��o�H+����8V���}�ݟC�,� B��Є�a@CD$F[=���S��#"��7���,vO-'���}��^��a�������ˎ���7�����	�̵�����n��+���f��خ'��g�/�8=��� �n��K��d�p'�B=�B�(���I���䵓��N�vl�z	�컸��Nc�Cq8&9�V�!�5ZH��!�R�������A���ˍ��
q��ߚ��+꟥�1�Bm��o�_��K��p�P<)��ԪSY��:ڀ^#[���	9DDDM_���H�c�hH��Y��+BZ���V^�6ݟ��U�����ZPu-�^�K4�2P�T`V+<y� ]���@xV�j���Aw�[���J���>�`��#v��� ��}�΀���Ӯ'͕4-���CQ1�,�p?��<p2'٭^�XU:� Hh4�$�(�\�6/�����?q3�����G��{�/.-I�3�$?�8u��̝PSn� +?ž��h`Bg󟘳2ߞ���Kyr�U�=G���x*/,?h�'4o2篠���I"J�JH�,:+�;+&/C�2�'O�⣤3�$0Hߥ�|�2��N��7�_ae�B�ez�ǰ��lu��&w����#�WH���>�u���,@���T�ȠuD�9�wg�U�
����C�eN:l��=G)�/�٠�E�8�m�f;�V�W0�~L�R��HoP�'_�%��/�"^Ć)�>R�i���57�C�P�gl���d�*���Q+����-^7�DB�c_yĎ�c���%(Iv�Yp��4��2�Y�Fb��>���KQ�1�x� ���8�zy��h�PuB/z���8�	m���g�H�%��(k���`6/��) �V��xĈ>�;�Y�2'T�0a�6�ȗxH�r�2�7F�t����$3?��\E�@e��ӂ*�%z��o��H���Q��f��3h8I&����=uY�lX�^�㱼��9ܭ�OT Z{fmm�'����n2�ܸQt�1[&L��Ev�n�
�fJ��0��I^u�L���F����.(T;m�(@�>�2�� "��#�#�ZP��@j��o}���V):Dy�.�1��sU���KA�T�F6"�;�Qc
��2D�$)4<�}F�Є�.����m�𢺴�I�#r:�W�H�N�=Ǝ�e (��r��r����A�i�F|E��8Y�0��FH���a�@�j5d 5�X6��V���PZ
HJ���i%��nͤ��{CZ�G�����nDiD�'�;N�a1�4CD"��P�I���ח@n��� ��z�Y6��X�F�(7�EZ<�8���2��>{��>�ij�;I��-d�ȑb�t�XR����i�-��!�-� -e��4-"� ��R�����u.$l���L�0V愹�+JnF�@��`بb5���[0�, �2;2_��w��X���j�m� X]�@8���S<���ȏX������Ϝ8�	hYi2=&�H�`���fL�)��(��6A!1�߂c��(���� lИ12J�g�I���e(����wa9���ZSF�����
PL�:�6�U�_�-���3�G�E
ux�A �aZ��Nr�R� �.�Bz��k�[4u�H�=��4����@�n��?Ri����b],Oc_,�� ��������=^^1�W�F����3�VZ�ҒXJ�ىCz�B
�Z��"!��DښQ̏04L�{�z�lɐ`����&a'�9���+Ӑйw��͗6����bl���
���ka�ZU�y��6��R�bF��ԗW�r�I.�_zhEb�m$��ґ���\D0�)��L�b�$/X�ƪ"�i�АԎ�($�d�1D�MNN ��1ɜ �H7;-GD�AUW�XX]PX�������X4�1��1�+��T��)~a��%fb�I�ƝZ#R$m�ނ�P`�r4�K�ݥ�$��+Ŭ9���
�ȭ_�p�L�bo� �Z�2��h��ˡ�L�G4��̰eCQ�OUpr=�DJ�$$����~h�`�E)Y�B�[��m;�	���7�����̚gm�fҠ�zQi�%Ԅ&�F���֢9Ț��Ŵq'UI��D	��;0�=��z����"
z�ʗ��
��Ad@�� P�R�!O�]��BB�AU
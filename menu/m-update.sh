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
BZh91AY&SY��y ��E�@ ���?�������@�D@0  `�O�Z�a��������ji��0L2dɀF �A6��cI���4hѦ�FC A��  44dѣF� ��  d�4�U�~����L�4d�4`hdLM"Q&	6�~���)�4z�14hi�  h � �54��)�=�&Pځ���1OB���z��=���.F%�.dgq6Nq�����QFRk��Y��3�c�Y�/��>wNrY��r���tS�P{��:f2E�c!RC//	�e��	� *T������/�1+���+��V�̵c�"�Af�o�r.�}//�|��IȺ4�G;qg+qCT�Գ�.b���!.�Xĕ�����]����U��0���ɫ���      #CB�
�vufN�����3vjsD�n;�L���1���%�R#�g�Ͷ��^�B�!�e�*�%�Ad@���ٖ 4͓tۯ?��;��[��~r�v~W9�[�y��������i�K(|�(fCy�T`���H�ჳ���m�Wi 4��f�3�>�]?Hq�p�"^����B\����A����DV�P)����'�BKK|Iq}S�����[��[��J���׽yҺ/;���5/�
5+0�p}�ɴ3K��!B�`ʪ�X�+I�+B�V�#2hRW`�Mp�)N��Hܫ�A�qe�}���حJ��(t��P^�=��R���E���C�|]�JKSm��YՁO䴕FLeEÃ�� �����8�q�_9ӕ��VЄP�8�p	*�0]�i��z|fDc��S��������7�g��݀ �256��/���1�n�	K�W��θ��Kh��� �B���b�.I"c�SH�d�Ӻ�"eV5$�)!�%�S���[a	$�Cc<���V�Z"������S�+� kܝ�s�ۮ��W>���=D:�����"���5Ō����D�El���?9��7	��:%��gK.f�� ��is17Zx��Wya}�B��I$�P|��
��-v�&��jC�+�+�f��C�$�"��D0�E�+�m�En�|�����=m¼����`���mM�ݴ ��r%������[/�:Y��\-_d�k
��e\��W�Ҙ@(�"�Ӿ"	{`E��vS�K#���c�1�c�0�c�j��,ͱB���ޢ�r!
����p�f�@�+Z[HHͣ�x�u��*���44��@���9�\2�\�
�U�w�\,!w��SWg��� � d`�"LK�:�b7J��'BcHC	IJt"��x�t�Q]	���o����@uc�K%b��/q�����a�`l11����A�kiiʫ�����+���X��j�W Q�<s��8��p��$%��Z��A[K-�#rѨ�so�Ʈ��ï^�C�1�c�BI%u:��6I$�G:���c�Pz�)$�s
��Pڔ���Z+�͒  2��t��^UV$�qjaL�?r�cc�ѣ�dE�l=p`�'9�pg���ā3�:�Gl�@�����"�(HXP�<�
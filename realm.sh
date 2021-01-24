#!/bin/sh
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
��`realm.sh �kS�V��ﯸ�M��Bh̺3!Iw�a3��N?��Tl�#�<J܁,�@�LIw�x7���&8��l������l�)��!K�,��l�"C�s�9���9�ދ�DxL��c�:>;w�w1���wNU��J��;>���
�LVV4H�!�x ubd
)1.�us�
B�HJ�����R�L�Kt���{{2��#x%�F#l�Q����"�d=�鞁�~��'Z�D���$�iYQs)�;ÁKRJ�q�����w�����\}�EV�C�||�^��EvU�z�V��������t��H��&b\iB�B�*���Te	#��hx�p�_~:_~�R�sQ_�Է��Oo\���&GT��rjG���SPC��<��"�M�:�j(�4�g�!)S���6Y�	$�9ȃ�	r��W�D��E!�J����5t3��$Ai}8�qD�/�Τ���L�CɟA �=.I�����"1��L��̓`z�h��AI҈	
H�Ĕ(������ó) i>4�G{��OsA����p$�v��m��mp�����Ԉ(�V������f�	�L�6)����(�q�I�4>�'�
RU�rQ�C��r���p�Aed988G�t ��'�L=<��K�6. UPĬ&�R�ix.��|*!mZV&���M�B�`�/xIS�Ǡ���h28͋Z�X� ć��0�:�E1U�d�|��c�,k�
^��d)���tNA5�b}*�0+�Q���C���(Mc��� �F�S�Prp6�ɥ51�Ì�L#7�3�q�A$�ciDt�E8غ8֜gKM�]��u�����؇Icu2��׏˅e�X�woW�oIiy�l���r�R�S�)T�)�O��<}q�̢�
v���\�#;����Gf��&x6���R��F(q��e0�AR�����j���'^��J�i�
�Y2�o^���U��0k]�v��n?��^�o=g����t�ֺ�t�f���	�8�jl��B�哚����T�c6���Ulzf��xZAA�b"ұ�Bu��Ji�\x�^U���_T�Q�מ�!��8�bl�$Q'���	�����g=��G�g��z��aGy�X�����7���H0���U��j���~a^_�]-����0�ʃm�r�13��a�+�/�y���YC_�����P(D�ahF�`Ħ&�K��e�*����5����_d>�XR'KT��ad�9��z�Y}W�<_i����}a ����;��o���e�T>��dK/��`'H���؉Z��p6���-\���%Г�f�Kxx3O�]B�@?=	�/^�0�UDI�����1+�.��UhY��c��7���a@<u��a$e��k
/���AE�o����r�����	
V���hʹ�Kp�ջ�O\g�H��"l��P n� '$3���i~g����!ǯ�֍zvyk�v+�&�f������B����fL�i�H�dl$%myoKz�����=R>����PD��qVK3t"������m�䲛����;��G�\�q�n#�|.�۵�5T�b�r9i\�=��K�|�~��K��T�_ԗ�1��F�O���DB>ܗ@\�!.lW6�Kĵ�x#
�:��íÌ_��X ����ZO��@k�[���r�&$��q��彝������Ve����Kܕ������oc̽һ��sx^Sҧ����y�������)^�_r���Q�͙qIR`M؛}~4d��N��������1��'���Iu�m��k��_?�H�?��S1Y
hX�\2img�� Z;�fL��#A�hF�Cij:;W��ji��n��m�T�
��]�y��Wu��bH�^�m�L���Cq!������8��?��ko��w@	�}����L�_o��^�^kh`�k�0ZW
��hΏ�y8b����G���ָ
/�4��l�kۜ���^�Qus���se�;^�w�sP�e��!0��O:�����!��&ni<�e*�3�tW����z����L�(ˍ�i'����pKxz�[}yՐf����JKS��Ht�C�Rs�6@��2������p5&�xo{]]�Oz088�C����_�m1:�4�+ d>�,/��]nͧs�o�W���׊��p!��`���x�p���&ؕ{�wz��L����D�a�;![�G��;w֐�U�h]��{p��F�\>�0�X-s9�a/�òE�c���J�sֻ����׿!G{��L	x�Ei� ����W�x���Kv� �v\��^<`�a��X�'`�>�;8g�3l6�ԏA�G�c��<2�Y5����N��3�v`��-L>j������-f�h��0k�ϖ,�H��5-�OQ�K3�$  
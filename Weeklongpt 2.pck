GDPC                                                                               D   res://.import/White_full.png-794e5ebff9736ae1ae38982563bd5302.stex  P      8      �z�L&�2�*L
���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex       �      &�y���ڞu;>��.pD   res://.import/mummy_enemy.png-b2d675035d7af0e3f4a9bd29d0a450c7.stex �%      0      ��ɻ{k)��,59x�8H   res://.import/player_overhead.png-65c923896f850b78015d8529e0bf1e19.stex �)      D      \���E�|G�\ k#   res://Bullet.tscn   �      �      �����eG�z��-�   res://Enemy.gd.remap`7              � G>��A_WWng4��   res://Enemy.gdc �      �      ������Y�j���.   res://Enemy.tscn�
      U      a��e�m�N
䱓Iv�   res://Player.gd.remap   �7      !       ��0�F �qq��dX��   res://Player.gdc�      �      y�
2�66$�f���P�   res://Wall.tscn �      �      r����(_��~��j   res://White_full.png.import �      �      ���;�4D/N3���   res://default_env.tres  P      �       um�`�N��<*ỳ�8   res://icon.png  �7      �      G1?��z�c��vN��   res://icon.png.import   �"      �      ��fe��6�B��^ U�   res://mummy_enemy.png.import�&      �      ��"���L6�MF    res://player_overhead.png.import�*      �      �(��.Y���`���   res://project.binary�D      �      ��?�̌v"���;��T]   res://wall.tres �-      2       �s�x����&.:sB   res://wall2.tres�-      2       �s�x����&.:sB   res://world.tscn .      =	      b�_;�`�Mu]
�V            [gd_scene load_steps=3 format=2]

[ext_resource path="res://White_full.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 15, 8 )

[node name="Bullet" type="RigidBody2D"]

[node name="WhiteFull" type="Sprite" parent="."]
position = Vector2( 72.625, 65 )
scale = Vector2( 0.0170834, 0.0125 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 73, 65 )
shape = SubResource( 1 )
  GDSC            c      ������������τ�   �����ض�   �����϶�   ���������������Ŷ���   ����׶��   �����Ķ�   ���������¶�   �������Ӷ���   �������ض���   ������¶   ���������������Ӷ���   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   ���������Ӷ�      Player     2         Bullet                                                      	      
                            ,      8      ?      D      E      F      G      H      I      J      K      R      \      `      a      3YYYYYYY;�  �  PQYY0�  PQV�  -YY0�  P�  QV�  ;�  �  PQT�  PQ�  �  P�  T�  �  Q�  �  �	  P�  T�  Q�  �
  P�  QYYYYYYYY0�  P�  QV�  &P�  �  T�  QV�  �  PQ�  Y` [gd_scene load_steps=5 format=2]

[ext_resource path="res://mummy_enemy.png" type="Texture" id=1]
[ext_resource path="res://Enemy.gd" type="Script" id=2]

[sub_resource type="CircleShape2D" id=1]

[sub_resource type="CircleShape2D" id=2]

[node name="Enemy" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 136, 133 )
scale = Vector2( 2, 2 )
shape = SubResource( 1 )

[node name="MummyEnemy" type="Sprite" parent="."]
position = Vector2( 136, 130 )
texture = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
position = Vector2( 136, 134 )
scale = Vector2( 2, 2 )
shape = SubResource( 2 )

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
           GDSC   "      2        ������������τ�   ��������Ҷ��   ����������Ҷ   �����¶�   �����϶�   ���������������Ŷ���   ����׶��   �����ض�   ����¶��   ����������������Ҷ��   ϶��   ζ��   ���������Ҷ�   �������������Ӷ�   ������¶   ������������������������ض��   ���������������������Ҷ�   ���Ӷ���   ��������ض��   �������Ӷ���   �������ض���   ������������������ض   ���������������Ŷ���   ������������Ӷ��   ������Ҷ   �������ض���   �������Ӷ���   �������¶���   ������������Ҷ��   ���ڶ���   �������������������Ӷ���   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   �     �        res://Bullet.tscn         up              down      left      right         LMB           	   add_child         Enemy                            
                           	      
   !      #      $      +      2      3      <      C      L      S      \      c      l      s      {      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2   3YYY;�  SY;�  �  SY;�  ?P�  QYYYY0�  PQV�  -YY0�  P�  QV�  ;�  �  PQ�  �  &�  T�	  P�  QV�  �  T�
  �  S�  &�  T�	  P�  QV�  �  T�
  �  S�  &�  T�	  P�  QV�  �  T�  �  S�  &�  T�	  P�  QV�  �  T�  �  S�  �  �  T�  PQ�  �  �  P�  �  Q�  �  P�  PQQ�  �  &P�  T�  P�  QQV�  �  PQ�  Y0�  PQV�  ;�  �  T�  PQ�  �  T�  �  PQ�  �  T�  �  �  �  T�  P�  PQR�  P�  R�	  QT�  P�  QQ�  �  PQT�  PQT�  P�
  R�  Q�  Y0�  PQV�  �  PQT�  PQ�  �  YYYYYY0�  P�   QV�  &�  �   T�!  V�  �  PQY`    [gd_scene load_steps=4 format=2]

[ext_resource path="res://White_full.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 44.75, 29.75 )

[sub_resource type="OccluderPolygon2D" id=2]
polygon = PoolVector2Array( 51, 129, 51, 189, 141, 189, 140.94, 186.295, 141, 163, 141, 129 )

[node name="Node2D" type="Node2D"]

[node name="Sprite" type="Sprite" parent="."]

[node name="StaticBody2D" type="StaticBody2D" parent="Sprite"]

[node name="WhiteFull" type="Sprite" parent="Sprite/StaticBody2D"]
modulate = Color( 0, 0, 0, 1 )
position = Vector2( 95.9999, 159 )
scale = Vector2( 0.05, 0.05 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Sprite/StaticBody2D"]
position = Vector2( 95.75, 158.75 )
shape = SubResource( 1 )

[node name="LightOccluder2D" type="LightOccluder2D" parent="Sprite"]
occluder = SubResource( 2 )
              GDST  �             WEBPRIFF  WEBPVP8L  /�+ H1Z�-H��lu�@��f��`�F�$)z�?��3�������|g��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?�{1���W        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/White_full.png-794e5ebff9736ae1ae38982563bd5302.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://White_full.png"
dest_files=[ "res://.import/White_full.png-794e5ebff9736ae1ae38982563bd5302.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST                   WEBPRIFF  WEBPVP8L�   /�7��m�'0{��4DJ @��4K$� �9�$�ܢ��  p���3��rl�m��;��iou�yj C4� ��ND�쿲y$����K�?`��8 p�RJ��* �$�G���R?����6�I�=f�|Ȓ���i��d���]>�� c�i��nf< �N{��	����VҌo�4_F7��^"Iã�f�A��*�B����,%IX,���>�x<�Qʐ᱌�֭-��Gkm��b�`�~ [remap]

importer="texture"
type="StreamTexture"
path="res://.import/mummy_enemy.png-b2d675035d7af0e3f4a9bd29d0a450c7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://mummy_enemy.png"
dest_files=[ "res://.import/mummy_enemy.png-b2d675035d7af0e3f4a9bd29d0a450c7.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST0   0            (  WEBPRIFF  WEBPVP8L  //�O���$h�7{���r-�� @��_��RdnA�������9���  �]���A��3�nm۱�]���V�{=���1;������df�O@������ڂ0�j8ji�Ȋ���)��M�5C:�N���~{X���<���N;9*�a"	��ȴ3�����4$���<�Hd���LN�:���>��N�I�ZA�IÎ��2#ҙCE&��J��Ԟ�c0�J�0i���cZh+�?F�+�6S{���Zf�+}            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player_overhead.png-65c923896f850b78015d8529e0bf1e19.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://player_overhead.png"
dest_files=[ "res://.import/player_overhead.png-65c923896f850b78015d8529e0bf1e19.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [gd_resource type="TileSet" format=2]

[resource]
              [gd_resource type="TileSet" format=2]

[resource]
              [gd_scene load_steps=8 format=2]

[ext_resource path="res://player_overhead.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]
[ext_resource path="res://Enemy.tscn" type="PackedScene" id=3]
[ext_resource path="res://White_full.png" type="Texture" id=5]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 19, 15.5 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 24, 25 )

[sub_resource type="TileSet" id=3]

[node name="world" type="Node2D"]
modulate = Color( 0.247059, 0.415686, 0.407843, 1 )
position = Vector2( 237, 150 )

[node name="Player" type="KinematicBody2D" parent="."]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
position = Vector2( 22, 23.5 )
shape = SubResource( 1 )

[node name="PlayerOverhead" type="Sprite" parent="Player"]
position = Vector2( 21, 17 )
rotation = 1.5708
texture = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="Player"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player/Area2D"]
position = Vector2( 22, 23 )
shape = SubResource( 2 )

[node name="Enemy" parent="." instance=ExtResource( 3 )]

[node name="End" type="TextEdit" parent="."]
visible = false
margin_left = 248.0
margin_top = 109.0
margin_right = 490.0
margin_bottom = 292.0
text = "You Lose! Try again by clicking F"
readonly = true

[node name="Sprite" type="Sprite" parent="."]
show_behind_parent = true
position = Vector2( 400, 312 )
texture = ExtResource( 5 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = SubResource( 3 )
cell_size = Vector2( 16, 16 )
format = 1

[node name="Enemy2" parent="." instance=ExtResource( 3 )]
position = Vector2( 274, 51 )

[node name="Enemy3" parent="." instance=ExtResource( 3 )]
position = Vector2( 145, 226 )

[node name="Enemy4" parent="." instance=ExtResource( 3 )]
position = Vector2( -55, 124 )

[node name="Enemy11" parent="." instance=ExtResource( 3 )]
position = Vector2( 63, -144 )

[node name="Enemy13" parent="." instance=ExtResource( 3 )]
position = Vector2( -279, 26 )

[node name="Enemy14" parent="." instance=ExtResource( 3 )]
position = Vector2( -268, -209 )

[node name="Enemy15" parent="." instance=ExtResource( 3 )]
position = Vector2( -270, -120 )

[connection signal="body_entered" from="Player/Area2D" to="Player" method="_on_Area2D_body_entered"]
   [remap]

path="res://Enemy.gdc"
[remap]

path="res://Player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Weeklongpt 2   application/run/main_scene         res://world.tscn   application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled            input/up�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script            deadzone      ?
   input/down�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      S      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script            deadzone      ?
   input/left�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      A      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script            deadzone      ?   input/right�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      D      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script            deadzone      ?	   input/LMB�              events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script            deadzone      ?)   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres     
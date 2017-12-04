///td_sprite_index_to_group(sprite_index)
/* 
 * ALL ANIMATED 3D SPRITE GROUPS SHOULD START  THE INDEX WITH "spr_[name]_0"
 */

s = argument0
return string_copy(sprite_get_name(s), 0, string_length(sprite_get_name(s))-1)

///td_get_anim_prefix(sprite_index)
/* 
 * ALL ANIMATED 3D SPRITE GROUPS SHOULD START  THE INDEX WITH "spr_[name]_0"
 * Give the first sprite in a series of animated 3D sprites
 * Returns the prefix for it. Ex. "spr_dino_0" -> "spr_dino_"
 */

s = argument0
return string_copy(sprite_get_name(s), 0, string_length(sprite_get_name(s))-1)

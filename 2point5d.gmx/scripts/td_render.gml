///td_render(x, y, xscale, yscale, angle, height, tilt, sprite, alpha, color)
//
//By: like, a hundred bears. Heavily modded by Karl Phillips
//Source: http://www.like100bears.com/writing/2d-3d-in-gamemaker-studio

//Where it goes
xx = argument0; 
yy = argument1;

//Pixel size
x_scale = argument2
y_scale = argument3

//Angle offset of 3D sprite
anim_angle = argument4; 

//"Up" offset for sprite
anim_height = argument5; 

//"Down" offset for sprite
anim_tilt = argument6; 

//Array of all "sub images" for the sprite
sprite = argument7;

//Alpha channel
anim_alpha = argument8;

//Color blend
c = argument9;

//Suppress default GameMaker animaton
image_speed = 0

for (var i = 1; i < sprite_get_number(sprite); i++)  {
    var offsetX = (anim_height+i)*dsin(view_angle)*x_scale;
    var offsetY = -((anim_height+i)*dcos(view_angle)*y_scale);
    draw_sprite_ext(sprite, i, 
                    xx + (offsetX), yy + (offsetY), 
                    x_scale, y_scale, 
                    anim_angle + image_angle, 
                    c, anim_alpha);
}

/* Old version without anim height fixed and tilt
for (var i = 1; i < sprite_get_number(sprite) - anim_sink; i++)  {
    var offsetX = anim_height*x_scale + i*dsin(view_angle)*x_scale;
    var offsetY = -(anim_height*y_scale + i*dcos(view_angle)*y_scale);
    draw_sprite_ext(sprite, i + anim_sink, 
                    xx + offsetX, yy + offsetY, 
                    x_scale, y_scale, 
                    anim_angle + image_angle, 
                    c, anim_alpha);
}
*/

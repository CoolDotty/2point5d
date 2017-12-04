///load_level(name)

//Every level needs a camera
p = instance_create(0, 0, prt_black);
instance_create(0, 0, dev_camera);

//Load Level from file
file = file_text_open_read(argument0 + ".level");
ox = room_width/2
oy = room_height/2
while (!file_text_eof(file)) {
    s = file_text_read_string(file);
    //if(string_length(s) == 0) continue;
    print(s);
    param = string_split(" ", s, true);
    new = instance_create(ox-real(param[1]), oy-real(param[2]), asset_get_index(param[0]));
    //new.anim_angle = real(param[3])
    new.image_angle = real(param[3])
    file_text_readln(file);
}
file_text_close(file);

//Adjust Camera
global.focus = obj_player;
p.fade = true;
view_xview[0] = obj_player.x - view_wview[0]/2
view_yview[0] = obj_player.y - view_hview[0]/2

///load_level(name)

//Every level needs a camera
var overlay = instance_create(0, 0, prt_black);
var camera = instance_create(0, 0, dev_camera);

//Load Level from file
var file = file_text_open_read(argument0 + ".level");
var ox = room_width / 2;
var oy = room_height / 2;
while (!file_text_eof(file)) {
    var s = file_text_read_string(file);
    if(string_length(s) == 0 || string_char_at(s, 0) == '/') continue;
    print(s);
    var param = string_split(" ", s, true);
    var new = instance_create(ox-real(param[1]), oy-real(param[2]), asset_get_index(param[0]));
    new.image_angle = real(param[3]);
    file_text_readln(file);
}
file_text_close(file);

global.focus = obj_player;

//Adjust Camera
// view_xview[0] = global.focus.x - view_wview[0] / 2;
// view_yview[0] = global.focus.y - view_hview[0] / 2;

overlay.fade = true;

///save_level(name)
file = file_text_open_write(working_directory + "\" + name);
data = "";
origin_x = 0;
origin_y = 0;
with (dev_model) {
    if(object_get_name(object) == "obj_player") {
        other.origin_x = x;
        other.origin_y = y;
        break;
    }
}
with (dev_model) {
    rx = x - other.origin_x;
    ry = y - other.origin_y;
    other.data += object_get_name(object) + " " 
                    + string(rx) + " " 
                    + string(ry) + " " 
                    + string(rotate) 
                    + ansi_char(10); //Line break
}
print("Saved to: " + working_directory + "\" + name);
file_text_write_string(file, data);
file_text_close(file);

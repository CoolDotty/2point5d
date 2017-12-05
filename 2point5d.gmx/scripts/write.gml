///write()
var file;
print(working_directory + "level.txt");
file = file_text_open_write(working_directory + "\level.txt");
file_text_writeln(file);
file_text_write_string(file, "This is the level data!");
file_text_writeln(file);
file_text_write_string(file, "This is the level data!");
file_text_close(file);

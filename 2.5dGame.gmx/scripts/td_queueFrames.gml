///td_queueFrames(prefix)
index = 0;
prefix = argument0;
while (asset_get_index(prefix + string(index)) > 0) {
    frames[index] = asset_get_index(prefix + string(index));
    index += 1;
}

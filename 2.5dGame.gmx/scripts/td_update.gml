///td_update()
a = view_angle%360; //(a)ngle
if(a <= 90) {
    depth = -y + x
}
if(a > 90 && a <= 180) {
    depth = y + x
}
if(a > 180 && a <= 270) {
    depth = y + -x
}
if(a > 270 && a <= 360) {
    depth = -y + -x
}

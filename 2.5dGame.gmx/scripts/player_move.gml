///Player Controls
if keyboard_check(vk_shift) {
    movement_speed = 100;
} else {
    movement_speed = 5
}

if keyboard_check(ord('W')) {
    move(movement_speed*dsin(view_angle), -movement_speed*dcos(view_angle))
} else if keyboard_check(ord('S')) {
    move(-movement_speed*dsin(view_angle), movement_speed*dcos(view_angle))
}

if keyboard_check(ord('A')) {
    move(-movement_speed*dcos(view_angle), -movement_speed*dsin(view_angle))
} else if keyboard_check(ord('D')) {
    move(movement_speed*dcos(view_angle), movement_speed*dsin(view_angle))
}

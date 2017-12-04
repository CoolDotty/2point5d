///angle(angle)

//dev_camera.target_angle += argument0

if(dev_camera.target_angle + argument0 >= 360) {
    dev_camera.target_angle = (dev_camera.target_angle + argument0) % 360;
} else if(dev_camera.target_angle + argument0 < 0) {
    dev_camera.target_angle = 360 + ((dev_camera.target_angle + argument0) % 360);
} else {
    dev_camera.target_angle = dev_camera.target_angle + argument0;
}


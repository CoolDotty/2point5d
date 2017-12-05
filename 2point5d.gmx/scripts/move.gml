///move(x, y)
dx = argument0
dy = argument1

if place_free(x + dx, y) {
    x += dx
} else {
    if dx > 0 {
        move_contact_solid(0, dx)   
    } else if dx < 0 {
        move_contact_solid(180, dx)
    }
}

if place_free(x, y + dy) {
    y += dy
} else {
    if dy > 0 {
        move_contact_solid(270, dy)
    } else if dy < 0 {
        move_contact_solid(90, dy)
    }
}

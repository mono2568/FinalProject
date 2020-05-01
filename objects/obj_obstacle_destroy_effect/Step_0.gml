// create particle when destroyeed
var width = sprite_get_width(sprite_index), height = sprite_get_height(sprite_index),
    c_x = x + width * 0.5, c_y = y + height * 0.5,
    i_inc = width / 10, j_inc = height / 10;
for (var i = 0; i < width; i += i_inc) for (var j = 0; j < height; j += j_inc) {
    with (instance_create_layer(x + i, y + j, "Instances",obj_piece)) {
        left = i; top = j; self.width = i_inc; self.height = j_inc; 
        sprite_index = other.sprite_index;
        hspeed = (x - c_x) * 0.2;
        vspeed = (y - c_y) * 0.2;
        gravity = 0.5;
    }
}
instance_destroy();

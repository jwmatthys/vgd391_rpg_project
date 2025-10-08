var cell_size = 16;
var w = room_width / cell_size;
var h = room_height / cell_size;
grid = mp_grid_create(0,0,w, h, cell_size, cell_size);

var lay_id = layer_get_id("Tiles_Col");
var map_id = layer_tilemap_get_id(lay_id);

for (var i = 0; i < w; i++) {
    for (var j = 0; j < h; j++) {
        if (tilemap_get_at_pixel(map_id, i * cell_size, j * cell_size) > 0)
        {
            mp_grid_add_cell(grid, i, j);
        }
    }
}
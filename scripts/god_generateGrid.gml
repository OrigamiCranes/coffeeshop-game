//Create the Grid and Positions of Objects

var cell_width  = tile_size;
var cell_height = tile_size;

hcells = room_width / tile_size;
vcells = room_height / tile_size;

global.grid = mp_grid_create(0,0, hcells, vcells, cell_width, cell_height);

var n = 0;
var m = 0;

//predefine each grid tile to be empty
while(cell_width * n < room_width)
{
    while(cell_height * m < room_height)
    {
        global.room_object_grid[n,m] = 0;
        global.room_build_grid[n,m] = 0;
        global.room_wall_grid[n,m] = 0;
        global.room_wall_grid_subsprite[n,m] = 0;
        global.room_floor_grid[n,m] = 0;
        global.room_floor_grid_subsprite[n,m] = 0;
        m = m + 1;
    }
    m = 0;
    n = n + 1;
}

// Add Wall Tiles to no_entry zone on grid
/**
n = 0;
m = 0;
while(cell_width * n < room_width)
{
    while(cell_height * m < room_height)
    {
        if (tile_layer_find(tileDepth_wall, cell_width * n, cell_height * m) != -1)
        {
            room_build_grid[n,m] = "bg_wall";
            mp_grid_add_cell(global.grid, n, m)
        }
        m = m + 1;
    }
    m = 0;
    n = n + 1;
}




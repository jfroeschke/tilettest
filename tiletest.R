library(tiler)

library(tiler)
library(raster)
tiler_options(osgeo4w = "C:/OSGeo4W/OSGeo4W.bat")
tile_dir <- file.path(tempdir(), "tiles")
map <- system.file("maps/map_wgs84.tif", package = "tiler")
(r <- raster(map))

plot(r)

tile(map, tile_dir, "0-3")


list.files(tile_dir)

tile_viewer(tile_dir, "0-3")


plot(map)







# non-geographic/simple CRS
x <- system.file("maps/map.png", package = "tiler")
tiles <- file.path(tempdir(), "tiles")
tile(x, tiles, "1")


library(tiler)

# Define the colors for the tiles
colors <- c("red", "blue", "green", "yellow", "orange", "purple", "pink", "brown", "gray")

# Create a 3x3 grid of tiles
tiles <- tiler(grid_cols = 3, grid_rows = 3)

# Loop through each tile and assign a color
for (i in 1:length(tiles)) {
  tiles[[i]]$color <- colors[i]
}

# Plot the grid of tiles
plot(tiles)


x <- system.file("maps/map_wgs84.tif", package = "tiler")
tile(x, tiles, 0)
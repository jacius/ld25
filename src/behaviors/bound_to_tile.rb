define_behavior :bound_to_tile do
  requires :map_data

  setup do

    tile_size = map_data.tile_size
    half_tile = tile_size / 2

    actor.when :x_changed do
      off_grid = actor.x % tile_size
      unless off_grid == 0
        if off_grid < half_tile
          actor.x = actor.x / tile_size
        else
          actor.x = actor.x / tile_size + tile_size
        end
      end
    end

    actor.when :y_changed do
      off_grid = actor.y % tile_size
      unless off_grid == 0
        if off_grid < half_tile
          actor.y = actor.y / tile_size
        else
          actor.y = actor.y / tile_size + tile_size
        end
      end
    end
  end
end

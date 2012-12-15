define_actor :map do
  has_behaviors do
    positioned
  end

  view do
    configure do
      @dirt_color = Color.rgba 0x988058ff
      @tree_color = Color.rgba 0x9bd77dff
      @water_color = Color.rgba 0x3d70b3ff
      actor.has_attribute :map_image
    end

    draw do |target, x_off, y_off, z|
      map_data = actor.map_data
      tile_size = map_data.tile_size

      width = map_data.width * tile_size
      height = map_data.height * tile_size

      unless actor.map_image
        actor.map_image = wrapped_screen.record width, height do
          map_data.width.times do |c|
            map_data.height.times do |r|
              color = color_for_cell(map_data.cell_at(c, r))
              x = c * tile_size
              y = r * tile_size
              target.fill x, y, x+tile_size, y+tile_size, color, ZOrder::MapTiles
            end
          end
        end
      end

      target.draw_image actor.map_image, x_off, y_off, z

    end
    helpers do
      def color_for_cell(cell)
        case cell.tile_type
        when TileType::Dirt
          @dirt_color
        when TileType::Tree
          @tree_color
        when TileType::Water
          @water_color
        end
      end
    end
  end
end

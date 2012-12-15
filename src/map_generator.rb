class MapGenerator
  def populate(map_data)
    map_data.width.times do |c|
      map_data.height.times do |r|
        cell = MapCell.new c, r, rand(3)
        map_data.set_cell_at c, r, cell
      end
    end
  end
end

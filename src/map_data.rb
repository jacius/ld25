class MapData
  attr_accessor :tile_size, :width, :height

  def configure(width, height, tile_size)
    @width = width
    @height = height
    @tile_size = tile_size
    @cells = Array.new(height) { Array.new(width) }
  end

  def cell_at(x, y)
    column = @cells[x]
    column[y] if column
  end

  def set_cell_at(x, y, cell)
    column = @cells[x]
    column[y] = cell
  end

end


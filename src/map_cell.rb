class MapCell
  attr_accessor :x, :y, :actors, :tile_type
  def initialize(x, y, tile_type)
    @x = x
    @y = y
    @tile_type = tile_type
    @actors = []
  end

  def add_actor(actor)
    @actors << actor
  end

  def remove_actor(actor)
    @actors.delete(actor)
  end
end

define_actor :forest do
  has_behaviors do
    bound_to_tile
    growing
    harvestable
  end

  view do
    draw do |target, x_off, y_off, z|
    end
  end
end

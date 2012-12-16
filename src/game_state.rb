
class GameState
  attr_accessor :map


  def tick
    @balance += profit
  end


  attr_accessor :balance

  # The amount your balance increases each game tick.
  def profit
    # base_profit - outrage + marketing.
  end

  def base_profit
    @base_profit ||= 20
  end
  attr_writer :base_profit


  def score
    balance + evilness
  end

  def evilness
    pollution + exploitation
  end

  # Public outrage about your evilness
  def outrage
    # evilness - marketing
  end


  def exploitation
    # ...
  end


  def pollution
    air_pollution + water_pollution
  end

  def air_pollution
    # sum of the air pollution from all factories in the map
  end

  def water_pollution
    # sum of the water pollution from all factories in the map
  end

end

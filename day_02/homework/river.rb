class River

  attr_reader :name, :fish_stock

  def initialize(river_name)
    @name = river_name
    @fish_stock = []
  end

  def return_river_name(fish_name)
    return @name
  end

  def number_of_fish
    return @fish_stock.count
  end

  def add_fish_to_river(fish)
    @fish_stock.push(fish)
    return number_of_fish()
  end

  def remove_fish_from_river(fish)
    @fish_stock.delete(fish)
    return number_of_fish()
  end



end

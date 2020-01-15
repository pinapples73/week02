class Bear

  attr_reader :stomach, :name

  def initialize(bear_name, bear_type)
    @name = bear_name
    @type = bear_type
    @stomach = []
  end

  def return_bear_name(bear_name)
    return @name
  end

  def number_of_fish_in_stomach()
    return @stomach.count()
  end

  def add_fish_to_stomach(fish_name)
    @stomach.push(fish_name)
    return @stomach.count
  end

  def catch_fish(river, fish_name)
    for fish in  river.fish_stock()
      if fish == fish_name
        add_fish_to_stomach(fish_name)
        river.remove_fish_from_river(fish_name)
      end
    end
  end

end

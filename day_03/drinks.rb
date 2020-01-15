class Drink

  attr_accessor :quantity, :name, :price

  def initialize(drink_name, price)

    @name = drink_name
    @quantity = 100
    @price = price
  end

  def return_drink_name
    return @drink_name
  end

  def return_drink_price
    return @price
  end

end

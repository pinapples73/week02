class Pub

  attr_reader :drinks, :till

  def initialize(pub_name, till, drinks)
    @pub_name = pub_name
    @till = till
    @drinks = []
  end

  def check_pub_name
    return @pub_name
  end

  def return_till_amount
    return @till
  end

  def return_drinks_stock
    return @drinks
  end

  def stock_drinks(drink)
    @drinks.push(drink)
  end

  def check_if_drink_is_in_stock(drink_name)
    for drink in @drinks
      if drink.name == drink_name && drink.quantity > 0
        return drink.price
      else
        return nil
      end
    end
  end

  def add_money_to_till(amount)
    @till += amount
  end

end

class Bar

  attr_reader :bar_tab, :drinks

  def initialize()
    @bar_tab = 0
    @drinks = [
      {
      name: 'vodka',
      price: 5},
      {
      name: 'beer',
      price: 4},
      {
      name: 'whiskey',
      price: 6}]

  end

  def add_to_bar_tab(amount)
    @bar_tab += amount
  end

  def return_drinks_price(drink_name)
    for drink in @drinks
      if drink[:name] == drink_name
        return drink[:price]
      end
    end
    return nil
  end

end

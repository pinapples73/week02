class Customer

  attr_accessor :wallet

  def initialize(customer_name, wallet)
    @customer_name = customer_name
    @wallet = wallet
  end

  def return_customer_name
    return @customer_name
  end

  def return_wallet_contents
    return @wallet
  end

  def customer_buys_drink(drink, pub)

    drink_price = pub.check_if_drink_is_in_stock(drink)

    if drink_price != nil
      if @wallet >= drink_price
        @wallet -= drink_price

        pub.add_money_to_till(drink_price)
      end
    end
  end
  
end

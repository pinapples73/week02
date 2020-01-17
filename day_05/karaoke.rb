class Karaoke

  attr_reader :room_list , :till, :ticket_price

  def initialize()
    @room_list = []
    @till = 0
    @ticket_price = 10

  end

  def add_money_to_till
    @till += @ticket_price
  end

  def test_guest_cash(guest)
    if guest.cash >= @ticket_price
      return true
    else
      return false
    end
  end

end

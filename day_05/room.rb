class Room

  attr_reader :theme, :capacity, :song_list, :guest_list

  def initialize(theme, capacity, song_list)
    @theme = theme
    @capacity = capacity
    @song_list = song_list
    @guest_list = []
  end




  def check_in_guest(guest , karaoke)
    @karaoke_club = karaoke
    @guest = guest
    @ticket_price = karaoke.ticket_price
    if @karaoke_club.test_guest_cash(@guest) == true
      if @guest_list.count < @capacity
        @guest_list.push(guest)
        @guest.remove_cash_from_user(@ticket_price)
        @karaoke_club.add_money_to_till
      else
        p 'Room is full!'
      end
    else
      p 'User does not have sufficient funds'
    end
  end

  def checkout_guest(guest)
    if guest_list.include? guest
      @guest_list.delete(guest)
    else
      p 'This guest is not in this room!'
    end
  end



end

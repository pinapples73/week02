class Guest

  attr_reader :name, :fav_song, :cash

  def initialize(name, fav_song , cash)
    @name = name
    @fav_song = fav_song
    @cash = cash
  end

  def remove_cash_from_user(amount)
    @cash -= amount
  end

end

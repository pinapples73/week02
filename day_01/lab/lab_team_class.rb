class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  #getters
  #
  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end

  # # setters
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(player_name)
    @players.push(player_name)
  end

  # def check_player(player_name)
  #   for player in @players
  #     if player_name == player
  #       return true
  #     end
  #   end
  # end

  #refactored the above
  def check_player(player_name)
    @players.include? player_name
  end

  def update_points(result)
    if result == 'win'
      @points += 3
    end
  end

end

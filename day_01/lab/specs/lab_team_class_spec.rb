require('minitest/autorun')
require('minitest/reporters')
require_relative('../lab_team_class')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new('King Kong Utd', ['Jim','Sam','Ben','Bob'], 'Mighty Joe Young', 0)
  end

  #test getters
  def test_get_team_name
    assert_equal('King Kong Utd', @team.team_name)
  end

  def test_get_players
    assert_equal(['Jim','Sam','Ben','Bob'], @team.players)
  end

  def test_get_coach
    assert_equal('Mighty Joe Young', @team.coach)
  end

  #test settersd

  def test_set_coach
    #@team.set_coach('Godzilla')
    @team.coach = 'Godzilla'
    assert_equal('Godzilla', @team.coach)
  end

  # test: Create a method that adds a new player to the players array.

  def test_add_new_player
    @team.add_player('Tam')
    assert_equal(5, @team.players.length)
  end

  # test: Add a method that takes in a string of a player’s name and checks to see if they are in the players array.

  def test_check_player_in_squad
    assert_equal(true, @team.check_player('Jim'))
  end

  def test_start_points
    assert_equal(0, @team.points)
  end

  def test_update_points__win
    @team.update_points('win')
    assert_equal(3, @team.points)
  end

  def test_update_points__loose
    @team.update_points('lose')
    assert_equal(0, @team.points)
  end


end

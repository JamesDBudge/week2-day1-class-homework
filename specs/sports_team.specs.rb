require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')


class TestSportsTeam < MiniTest::Test

  def test_sports_team_name
    team = SportsTeam.new("Clachnacuddin", ["Jim", "Paul", "Peter"], "James")
    assert_equal("Clachnacuddin", team.team_name)
  end

  def test_sports_team_players
    team = SportsTeam.new("Clachnacuddin", ["Jim", "Paul", "Peter"], "James")
    assert_equal(["Jim", "Paul", "Peter"], team.players)
  end

  def test_sports_team_coach
    team = SportsTeam.new("Clachnacuddin", ["Jim", "Paul", "Peter"], "James")
    assert_equal("James", team.coach)
  end

  def test_update_team_name
    team = SportsTeam.new("Clachnacuddin", ["Jim", "Paul", "Peter"], "James")
    team.team_name = ("Caley")
    assert_equal("Caley", team.team_name)
  end

  def test_add_team_member
    team = SportsTeam.new("Clachnacuddin", ["Jim", "Paul", "Peter"], "James")
    team.add_player("Tam")
    assert_equal(["Jim", "Paul", "Peter", "Tam"], team.players)

  end

  def test_update_coach
    team = SportsTeam.new("Clachnacuddin", ["Jim", "Paul", "Peter"], "James")
    team.coach = ("Murhino")
    assert_equal("Murhino", team.coach)
  end

  def test_player_available
    team = SportsTeam.new("Clachnacuddin", ["Jim", "Paul", "Peter"], "James")
    assert_equal(true, team.available("Jim"))
  end

  def test_points
    team = SportsTeam.new("Clachnacuddin", ["Jim", "Paul", "Peter"], "James")
    assert_equal(0, team.points)
  end

  def test_game_outcome
    team = SportsTeam.new("Clachnacuddin", ["Jim", "Paul", "Peter"], "James")
    team.results("win")
    assert_equal(3, team.points)
  end


end


class SportsTeam

attr_accessor :team_name, :coach, :points
attr_reader :players

  def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
  end


  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def update_name(new_name)
  #   @team_name = new_name
  # end
  #
  def add_player(new_player)
    @players.push(new_player)
  end
  #
  # def update_coach(new_coach)
  #   @coach = new_coach
  # end

  def available(player)
    for each_player in @players
      if each_player == player
        return true
      end
    end
  end


  def results(result)
    @points += 3 if result == "win"
  end

end

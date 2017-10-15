require_relative "./team_data"


class Team
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    all_teams = []
    TeamData::ROLL_CALL.each_key do |team|
      all_teams << Team.new(team)
    end
    all_teams
  end

  def players
    team_players = []
    team = TeamData::ROLL_CALL[:"#{@name}"]
    team.each do |position, player|
      team_players << Player.new(player, position, @name)
    end
    team_players
  end
end

require "spec_helper"

RSpec.describe Team do
  let (:eagles) { Team.new("Simpsons Slammers") }
  describe "Team class" do
    it "should initialize with a name" do
      expect(eagles).to be_a(Team)
    end
  end

  describe "#all" do
    it "adds a team to the data array" do
      expect(Team.all).to be_a(Array)
    end
  end

  describe "#players" do
    it "should return all the players for that team" do
      eagles.players.each do |player|
        expect(player.team_name).to eq(eagles.name.to_sym)
      end
    end
  end

end

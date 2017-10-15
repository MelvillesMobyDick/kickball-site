require "spec_helper"

RSpec.describe Player do

  let (:bart) { Player.new("Bart Simps", "Catcher", "Simpson Slammers") }
  describe "Player class" do
    it "should initialize name, position and team_name" do
      expect(bart).to be_a(Player)
    end
  end

  describe "#all" do
    it "adds all the players to the data array" do
      expect(Player.all).to be_a(Array)
      expect(Player.all[0]).to be_a(Object)
    end
  end
end

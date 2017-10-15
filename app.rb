require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @teams = Team.all
  erb :teams
end


get "/teams/:team_name" do
  @team_name = Team.new("#{params[:team_name].to_sym}")

  erb :team_name
end

require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


get '/super_hero' do
    erb :super_hero
end 

post '/teams' do
    @team_name = params["team"]["name"]
    @team_motto = params["team"]["motto"]
    @team_members = params["team"]["members"]
  erb :team
end
end 
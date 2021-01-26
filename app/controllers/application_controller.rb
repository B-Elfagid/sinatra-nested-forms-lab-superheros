require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


get '/super_hero' do
    erb :super_hero
end 

post '/teams' do
    @team = Team.new(params[:team])
    params[:team][:members].each do |hero|
      Hero.new(hero)
    end
    @heroes = Hero.all
    erb :team
  end

end 
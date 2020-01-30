require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :super_hero
  end 
  
  post '/teams' do 
    @team = Team.new(params[:team])
    
    @heroes = Hero.all
    
   # @heroes.each do |hero|
    #   Hero.name 
     #  Hero.power
      # Hero.bio
    #end 
    
     
    
    erb :team
  end
end

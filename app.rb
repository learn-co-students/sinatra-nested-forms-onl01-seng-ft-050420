require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'


module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |args|
        Ship.new(args)
      end
      @ships = Ship.all
      erb :show
    end

  end
end

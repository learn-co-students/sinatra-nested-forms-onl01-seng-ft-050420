require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirates = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      
      @ship1 = Ship.new(name: params[:pirate][:ships][0][:name], type: params[:pirate][:ships][0][:type], booty: params[:pirate][:ships][0][:booty])
      @ship2 = Ship.new(name: params[:pirate][:ships][1][:name], type: params[:pirate][:ships][1][:type], booty: params[:pirate][:ships][1][:booty])
      # params[:pirate][:ships].each do |ship_data|
      #   @ships = Ship.new(ship_data)
      # end
      
      erb :'pirates/show'
    end

  
  end
end

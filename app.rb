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
      puts params
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |params|
        Ship.new(params)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end

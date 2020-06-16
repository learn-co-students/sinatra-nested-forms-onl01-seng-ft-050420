require './environment'

module FormsLab
  class App < Sinatra::Base
  # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :pirate_form
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each {|ship_details| Ship.new(ship_details)}
      @ships = Ship.all
      erb :pirate
    end
  end
end

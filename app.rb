require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :user_input
    end

    post '/piglatinize' do
      params[:user_phrase]
      # "Your word is #{params[:user_phrase]}"
      # erb :user_input
    end

end

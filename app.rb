require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    translated_phrase = PigLatinizer.new
    @pl = translated_phrase.piglatinize(params[:user_phrase])
    erb :results
  end
end

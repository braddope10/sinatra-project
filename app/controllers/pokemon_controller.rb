class PokemonController < ApplicationController

    get '/pokemon/new' do
        erb :'pokemon/new'
    end

end
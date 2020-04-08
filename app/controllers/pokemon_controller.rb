class PokemonController < ApplicationController

    get '/pokemon/new' do
        erb :'pokemon/new'
    end

    post '/pokemon' do

    end
    
end
class PokemonController < ApplicationController

    get '/pokemon/new' do
        erb :'pokemon/new'
    end

    post '/pokemon' do
        pokemon = Pokemon.create(params)
        user = Helpers.current_user(session)
        pokemon.user = user
        redirect to "/users/#{user.id}"
    end

end
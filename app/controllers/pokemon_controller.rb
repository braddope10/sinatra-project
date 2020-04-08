class PokemonController < ApplicationController

    get '/pokemon' do
        @pokemon = Pokemon.all 
        erb :'pokemon/index'
    end

    get '/pokemon/new' do
        if !Helpers.logged_in?(sessions)
            redirect to '/'
        end
        erb :'pokemon/new'
    end

    post '/pokemon' do
        pokemon = Pokemon.create(params)
        user = Helpers.current_user(session)
        pokemon.user = user
        pokemon.save
        redirect to "/users/#{user.id}"
    end

    get '/pokemon/:id' do
        
    end

end
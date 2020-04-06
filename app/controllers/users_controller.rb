class UsersController < ApplicationController

    get '/signup' do
        erb :'users/signup'
    end

    post '/users' do
        user = User.create(params) #the @user instance variable would only be needed if you need to access it in the view
        session[:user_id] = user.id
        redirect to "/users/#{user.id}"
    end

    get '/users/:id' do #:id makes this a dynamic route
        if @user = User.find_by(id: params[:id])
            @user = User.find_by(id: params[:id])
        else
            redirect to '/'
        end
        erb :'users/show'
    end



end
class UsersController < ApplicationController

    get '/signup' do
        erb :'users/signup'
    end

    post '/users' do
        user = User.create(params) #the @user instance variable would only be needed if you need to access it in the view
        redirect to "/users/#{user.id}"
    end

    get '/user/:id' do #:id makes this a dynamic route
        @user = User.find_by(id: params[:id])
        erb :'/users/show'
    end



end
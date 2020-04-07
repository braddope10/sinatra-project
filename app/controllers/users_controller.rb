class UsersController < ApplicationController

    get '/signup' do
        erb :'users/signup'
    end

    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password]) #has_secure_password and bcrypt
            session[:user_id] = user.id
            redirect to "/users/#{user.id}"
        else
            redirect to '/signup'
        end
    end

    post '/signup' do
        user = User.create(params) #the @user instance variable would only be needed if you need to access it in the view
        if user.valid?
            session[:user_id] = user.id
            redirect to "/users/#{user.id}"
        else
            redirect to '/signup'
        end
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
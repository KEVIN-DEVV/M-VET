class SessionsController < ApplicationController
    def new
    end
  
    def create
      user = User.find_by(email: params[:email])
      if user & user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user
    end
  
    def destroy
      session[:user_id] = nil
    end
  end
  
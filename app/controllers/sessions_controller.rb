class SessionsController < ApplicationController

    def new
    end 

    def create
        if !params[:name] || params[:name].empty? #if params[:name] does not exit or empty, redirect to create new user
        redirect_to controller: 'sessions', action: 'new'
        else
            session[:name] = params[:name]
        redirect_to '/'
        end
    end 

    def destroy
        session.delete :name 
        redirect_to root_path
    end 

end 
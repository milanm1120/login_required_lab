class SessionsController < ApplicationController
    #sessions controller is required for login/logout request in order to set the secret show page
    def new

    end

    #check for params to see if you are logged in, if so show the home page, otherwise redirect to login
    def create
        if !params[:name] || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    #destroy the session and redirect back to login
    def destroy
        session.delete :name
        redirect_to '/login'
    end
end
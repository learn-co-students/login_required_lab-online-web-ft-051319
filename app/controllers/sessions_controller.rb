class SessionsController < ApplicationController

    helper_method :current_user

    def new
    end

    def create
        name = params[:name]
        if name.nil? || name.empty?
            redirect_to "/login"
        else
            session[:name] = name 
        end
    end

    def destroy
        if current_user && current_user != nil 
            session.delete :name
        end
    end

end
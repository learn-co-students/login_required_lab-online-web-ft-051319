class SessionsController < ApplicationController

    def create
       #binding.pry
        if params[:name].nil? || params[:name].empty? 
            redirect_to '/login'
        else  
            session[:name] = params[:name]
        end
    end

    def destroy
        if current_user
            session.delete :name
        end
    end
end

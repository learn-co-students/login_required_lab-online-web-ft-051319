class SecretsController < ApplicationController
    before_action :require_logged_in
    def show
        # if !session[:user]
        #     redirect_to '/login'
        # else 
         render :sessions
        # end
    end
end

class SecretsController < ApplicationController

    helper_method :current_user

    # before_action :current_user

    def show
        unless current_user
            redirect_to controller: 'sessions', action: "new"
        end
    end


    # private 

    # def require_login
    #     redirect_to controller: 'sessions', action: "/login" unless current_user
    # end
end
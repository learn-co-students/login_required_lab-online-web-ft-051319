class SecretsController < ApplicationController

    before_action :require_login

    helper_method :current_user

    def show
    end


    private

    def require_login
        redirect_to sessions_new_path unless !!current_user
    end

end
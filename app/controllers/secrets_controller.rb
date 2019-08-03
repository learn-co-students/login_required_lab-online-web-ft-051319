class SecretsController < ApplicationController
    before_action :require_login

    def show
        if current_user.nil?
            redirect_to login_path
        else
            render :show
        end
    end

    private

    def require_login
        redirect_to login_path unless session.include? :name
    end
end
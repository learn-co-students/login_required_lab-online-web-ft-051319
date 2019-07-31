class SecretsController < ApplicationController

  before_action :require_login

  def show
  end

  private

  def require_login
    # return head(:forbidden) unless session.include? :name
    if !session.include? :name
      redirect_to root_path
    end
  end

end

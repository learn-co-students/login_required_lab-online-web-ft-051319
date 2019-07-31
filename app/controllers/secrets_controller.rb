class SecretsController < ApplicationController
  def new
  end

  def show
    if current_user
      render :show
    else
      redirect_to sessions_new_path
    end
  end
end

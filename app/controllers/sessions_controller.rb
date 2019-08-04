class SessionsController < ApplicationController
  def new
  end

  def create
    username=params[:name]
    if username == "" or username == nil
      redirect_to sessions_new_path
    else
      session[:name]=username
      redirect_to "/"
    end
  end

  def destroy
    session.clear
    redirect_to sessions_new_path
  end


end

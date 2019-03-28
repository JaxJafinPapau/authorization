class SessionsController < ApplicationController
  def new

  end

  def create
    redirect_to root_path
    flash[:success] = "You have successfully logged in!"
  end
end

class SessionsController < ApplicationController
  before_action :required_logged_in, only: [:destroy, :create]

  def new
    render :new
  end

  def create
    user= User.find_by(id: params[:id])
    if user
      redirect_to users_url
    else
      flash.now[:errors]= ["incorrect password or username"]
      render :new
    end
  end

  def destroy
    logout
  end
end

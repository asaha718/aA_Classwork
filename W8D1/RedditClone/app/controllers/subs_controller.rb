class SubsController < ApplicationController
  before_action :required_logged_in, only: [:edit, :update, :create]
  def new
    render :new
  end

  def create
    @sub= Sub.new(sub_params)
    @sub.user_id= params[:user_id]
    if @sub.save
      redirect_to user_url(params[:id])
    else
      flash[:errors]= sub.errors.full_messages
      render :new
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def sub_params
    params.require(:sub).permit(:name, :description)
  end
end

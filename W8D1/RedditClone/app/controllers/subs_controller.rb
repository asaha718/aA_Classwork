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
      flash[:errors]= @sub.errors.full_messages
      render :new
    end
  end

  def index
    @subs= Sub.all
    render :index
  end

  def show
    @sub= Sub.find_by(id: params[:id])
  end

  def edit
    @sub= Sub.find_by(id: params[:id])
  end

  def update
    @sub= Sub.find_by(id: params[:id])
    if @sub.update(sub_params)
      redirect_to sub_url
    else
      flash[:errors]= @sub.errors.full_messages
      render :edit
    end
  end

  def sub_params
    params.require(:sub).permit(:name, :description)
  end
end

class UpdatesController < ApplicationController
  def index
   @updates = Update.order("created_at DESC").limit(4)
  end

  def new
    @updates = Update.new
  end

  def edit
    @updates = Update.find(params[:id])
  end

  def create
    @update = Update.create(update_params)
    if @update.valid?
      redirect_to root_path
    end
  end

  def update
    @update = Update.find(params[:id])
    @update.update(update_params)
    if @updates.valid?
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @update = Update.find(params[:id])
    @Update.destroy
    redirect_to root_path
  end

  def show
    @update = Update.find(params[:id])
  end

  def all
    @updates = Update.all
  end
  
  private
  def update_params
    params.permit(:title, :description,:photo)
  end
end

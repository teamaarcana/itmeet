class Api::V1::UpdatesController < ApplicationController
  def index
   @updates = Update.all
    render json: @updates
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
      respond_to do |format|
        format.json { render json: @update }
      end
    end
  end
  def update
    @update = Update.find(params[:id])
    @update.update(update_params)
    if @updates.valid?
      format.json { render json: @update }
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
    render json: @update
  end
  private
  def update_params
    params.permit(:title, :description,:photo)
  end
end

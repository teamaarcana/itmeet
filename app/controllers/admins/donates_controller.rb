class DonatesController < ApplicationController
  def index
   @donates = Donate.all
  end

  def new
    @donates =Donate.new

  end
  def edit
       @donates = Donate.find(params[:id])
  end

  def update
    @donates = Donate.find(params[:id])
    @donates.update(donate_params)
    if @donates.valid?
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @Donate = Donate.find(params[:id])
    @Donate.destroy
    redirect_to root_path
  end
  def show
      @donates = Donate.find(params[:id])
  end
  def donate_params
    params.permit(:title, :product, :quantity, :option)
  end
end

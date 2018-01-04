class Api::V1::DonatesController < ApplicationController
  def create
    donate = Donate.create(donate_params)
    if donate.valid?
      respond_to do |format|
        format.json { render json: @donate }
      end
    end
  end
  private
  def donate_params
    params.permit(:title, :product, :quantity, :option)
  end
end

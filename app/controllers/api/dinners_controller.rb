module API
  class DinnersController < ApplicationController

    def index
      render json: Dinner.where(cuisine: params[:cuisine])
    end

    def show
      render json: Dinner.find(params[:id])
    end

    private
    def dinner_params
      params.require(:dinner).permit(:name, :address, :phone_number, :cuisine, :alcohol, :hours, :image_url)
    end
  end
end
class DinnersController < ApplicationController

  def index
    @dinners = Dinner.all
  end

  def new
    @dinner = Dinner.new
  end

  def show
    @dinner = Dinner.find(params[:id])
  end

  def create
    @dinner = Dinner.new(dinner_params)

    if @dinner.save
      redirect_to dinner_path(@dinner), notice: 'Dinner was successfully created.' 
    else
      render :new
    end
  end

  def edit
    @dinner = Dinner.find(params[:id])
  end

  def destroy
    @dinner = Dinner.find(params[:id])
    @dinner.destroy
    redirect_to dinners_path
  end

  private
  def dinner_params
    params.require(:dinner).permit(:plan_id, :date, :time, :location, :address, :image_url, :hours, :phone_number, :alcohol, :cuisine)
  end
end

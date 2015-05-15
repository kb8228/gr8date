class DinnersController < ApplicationController

  def index
    @dinners = Dinner.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @dinners }
    end
  end

  def new
    @dinner = Dinner.new
  end

  def show
    @dinner = Dinner.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @dinner }
    end
  end

  def create
    @dinner = Dinner.new(dinner_params)

    respond_to do |format|
      if @dinner.save
        format.html { redirect_to @dinner, notice: 'Dinner was successfully created.' }
        format.json { render :show, status: :created, location: @dinner}
      else
        format.html { render :new }
        format.json { render json: @dinner.errors, status: :unprocessable_entity }
      end
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
    params.require(:dinner).permit(:plan_id, :date, :time, :location)
  end
end

class PlansController < ApplicationController
    def index
        @plans = Plan.all
    end

    def new
        @plan = Plan.new
    end

    def show
        @plan = Plan.find(params[:id])
    end

    def create
      @user = current_user
      @plan = @user.plans.create(plan_params)
      logger.debug @user.inspect + "\n"

      respond_to do |format|
        if @plan.save
          format.html { redirect_to @plan, notice: 'Date is planned!' }
          format.json { render :show, status: :created }
        else
          format.html { render :new }
          format.json { render json: @plan.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
        @plan = Plan.find(params[:id])
    end

    def destroy
        @plan = Plan.find(params[:id])
        @plan.destroy
        redirect_to plans_path
    end

    private
    def plan_params
        params.require(:plan).permit(:user_id, :date, :category, :location)
    end

end

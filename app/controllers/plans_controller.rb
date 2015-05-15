class PlansController < ApplicationController
    def index
        @plans = Plan.all
    end

    def new
        @plan = Plan.new
    end

    def create
    end

    def show
        @plan = Plan.find(params[:id])
    end

    def create
      @user = current_user
      @plan = @user.plans.new(plan_params)

      if @plan.save
        redirect_to plan_path(@plan)
      else
        render :new
      end
      
    end


    # def edit
    #     @plan = Plan.find(params[:id])
    # end

    def destroy
        @plan = Plan.find(params[:id])
        @plan.destroy
        redirect_to plans_path
    end

    private
    def plan_params
        params.require(:plan).permit(:user_id, :date, :time, :location)
    end

end

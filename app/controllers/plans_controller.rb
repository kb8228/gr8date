class PlansController < ApplicationController
    def index
        @plans = Plan.all
    end

    def new
      @plan = current_user.plans.new
    end

    def show
      @plan = Plan.find(params[:id])
    end

    def create
      @user = current_user
      @plan = @user.plans.new(plan_params)
      
      if @plan.save
        redirect_to edit_plan_path(@plan), notice: 'Date is planned!'
      else
        render :new
      end
    end

    def edit
        @plan = Plan.find(params[:id])
    end

    def update
      @plan = Plan.find(params[:id])

      if @plan.update(plan_params)
        flash[:message] = "Your plan was updated!"
        redirect_to plan_path(@plan)
      else
        render :edit
      end
    end

    def destroy
        @plan = Plan.find(params[:id])
        @plan.destroy
        redirect_to plans_path
    end

    private
    def plan_params
        params.require(:plan).permit(:user_id, :date, :location)
    end

end

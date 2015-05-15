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
      @plan = current_user.plans.new(plan_params)

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
        params.require(:plan).permit(:user_id, :date, :time, :location)
    end

end

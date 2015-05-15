module API 
  class PlansController < ApplicationController
    # def index
    #   render json: Plan.all
    # end

    def show
      render json: Plan.find(params[:id])
    end

    def update
      plan = Plan.find(params[:id])

      if plan.update(plan_params)
        render status: 204
      else
        render json: plan.errors, status:  422
      end
    end

    private
    def plan_params
        params.require(:plan).permit(:user_id, :date, :location)
    end
  end
end
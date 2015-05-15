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
      #might not need this stuff:
      # event = Event.find(params[:event_id])
      # plan.event = event
      # plan.save

    #REFERENCE
    # def update
    #   todo = Todo.find(params[:id])

    #   if todo.update(todo_params)
    #     render json: todo
    #   else
    #     render json: todo.errors, status: 422
    #   end
    # end
    end

    private
    def plan_params
        params.require(:plan).permit(:user_id, :date, :location)
    end
  end
end
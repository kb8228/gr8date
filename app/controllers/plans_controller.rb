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

    def edit
        @plan = Plan.find(params[:id])
    end

    def destroy
        @plan = Plan.find(params[:id])
        @plan.destroy
        redirect_to plans_path
    end


end

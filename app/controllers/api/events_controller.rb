module API
  class EventsController < ApplicationController
    #before_action :set_event, only: [:show, :edit, :update, :destroy]

    def index
      render json: Event.all
    end

    def show
      render json: Event.find(params[:id])
    end
  end
end
module API
  class EventsController < ApplicationController
    #before_action :set_event, only: [:show, :edit, :update, :destroy]

    def index
      render json: Event.where(category: params[:category], event_date: params[:event_date])
    end

    def show
      render json: Event.find(params[:id])
    end
  end
end
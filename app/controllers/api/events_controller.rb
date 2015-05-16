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

  private
    def event_params 
      params.require(:event).permit(:event_name, :event_date, :event_time, :venue_name, :address, :phone, :category, :venue_url, :image_url)
    end
end
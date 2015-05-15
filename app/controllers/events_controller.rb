class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        redirect_to event_path(@event), notice: 'Event was successfully created.'
      else
        render :new
      end
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  private
    def event_params 
      params.require(:event).permit(:event_name, :event_date, :event_time, :venue_name, :address, :phone, :category, :venue_url)
    end

    def set_event
      @event = Event.find(params[:id])
    end

end
class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def set_event
  end

end

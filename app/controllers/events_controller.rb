# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    @events = Event.includes(:tickets).all
  end

  def show
    @event = Event.includes(:tickets).find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:name, :date)
  end
end

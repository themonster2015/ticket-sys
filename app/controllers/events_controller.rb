class EventsController < ApplicationController
  def index
    @events = Event.includes(:tickets).all
  end

  def show
  end
  
  def reserve
    
  end
  def  new
    @event = Event.new
  end
  
  def create 
    event = Event.create(event_params)
    if event.save 
      redirect_to event
    else
      render :new
    end
  end

  private 

  def event_params
    params.require(:event).permit(:name,:date)
  end
end

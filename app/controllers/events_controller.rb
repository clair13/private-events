class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to current_user
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :date)
  end
end

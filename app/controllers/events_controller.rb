class EventsController < ApplicationController
  def index
    @user = current_user
    @events = Event.all
    @created_events = @user.created_events
  end

  def show
    @user = current_user
    @created_events = @user.created_events
    @event = Event.find(params[:id])
    @event.attendances
  end

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to(@event, notice: "Event was successfully created!")
    else
      render(:new)
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :event_date)
  end
end

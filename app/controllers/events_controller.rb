class EventsController < ApplicationController
  before_action :set_event, only: [ :show, :edit, :update, :destroy ]
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

  def edit
    @event
  end

  def update
    if @event.update(event_params)
      redirect_to(@event, notice: "Event was updated successfully!")
    else
      render(:edit)
    end
  end

  def destroy
    if @event.destroy
      redirect_to(events_url, notice: "Event was successfully deleted!")
    else
      redirect_to(events_url, alert: "Error deleting event: #{@event.errors.full_messages.join(", ")}")
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :event_date)
  end
end

class AttendancesController < ApplicationController
  before_action :set_event

  def create
    @attendance = @event.attendances.new(user: current_user)

    if @attendance.save
      redirect_to(@event, notice: "You have successfully entered the event!")
    else
      redirect_to(@event, alert: "There was an issue with entering the event!")
    end
  end

  def destroy
    @attendance = @event.attendances.find_by(user: current_user)
    if @attendance.destroy
      redirect_to(@event, notice: "You have successfully exited the event!")
    else
      redirect_to(@event, alert: "There was an issue with exiting the event!")
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])  # Use event_id for nested routes
  end
end

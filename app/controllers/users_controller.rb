class UsersController < ApplicationController
  def show
    @user = current_user
    @created_events = @user.created_events
  end
end

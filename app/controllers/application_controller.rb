class ApplicationController < ActionController::Base
  def doorkeeper
    current_user.doorkeeper
  end
  helper_method :doorkeeper
end

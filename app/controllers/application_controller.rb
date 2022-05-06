class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # around_action :set_time_zone
  
  include CaixasHelper
  include EstacionamentosHelper

  # private

  # def set_time_zone
  #   Time.use_zone(current_user.timezone) { yield }
  # end
end

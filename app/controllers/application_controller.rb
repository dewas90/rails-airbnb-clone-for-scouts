class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  attr_reader :current_profile
  helper_method :current_profile

  def current_profile
  	@current_profile ||= current_user.try(:profile)
  end
end

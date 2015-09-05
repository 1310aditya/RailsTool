class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:index]

  layout :findme



  def findme
  	if current_user.present?
  		"home"
  	else
  		"application"
  	end
  end
end

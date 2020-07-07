class ApplicationController < ActionController::Base
  helper_method :logged_in?

  private

  def logged_in?
    !!session[:user_id]
  end
end

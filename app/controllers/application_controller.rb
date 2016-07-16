class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_authentication

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_authentication
    unless current_user
      redirect_to(root_url)
      return false
    end
  end

  helper_method :current_user
end

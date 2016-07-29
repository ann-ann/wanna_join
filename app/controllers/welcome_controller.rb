class WelcomeController < ApplicationController
  skip_before_action :require_authentication
  def index
    @latitude = request.location.latitude
    @longitude = request.location.longitude
  end
end

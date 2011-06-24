class HomeController < ApplicationController
  def index
    @service_types = ServiceType.all
  end

end

class DashboardController < ApplicationController
  def index
    @dht11_reading = Dht11Reading.last()
  end
end

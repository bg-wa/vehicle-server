class DashboardController < ApplicationController
  def index
    @val = DhtSensor.read(4, 11) # pin=4, sensor type=DHT-11
  end
end
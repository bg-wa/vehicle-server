class DashboardController < ApplicationController
  def index
    if ENV['VEHICLE_SERVER_DEV'] == false
      require "dht-sensor-ffi"
      @val = DhtSensor.read(4, 11) # pin=4, sensor type=DHT-11
    end
  end
end

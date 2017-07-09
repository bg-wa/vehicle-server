class DashboardController < ApplicationController
  def index
    if RUBY_PLATFORM.include?("arm")
      require "dht-sensor-ffi"
      @val = DhtSensor.read(4, 11) # pin=4, sensor type=DHT-11
    end
  end
end

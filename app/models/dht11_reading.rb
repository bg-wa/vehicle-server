class Dht11Reading < ApplicationRecord

  def take_reading
    if RUBY_PLATFORM.include?("arm")
      require "dht-sensor-ffi"
      dht11_reading = DhtSensor.read(4, 11) # pin=4, sensor type=DHT-11

      Dht11Reading.create(
          temperature_celsius: dht11_reading.temp,
          temperature_fahrenheit: dht11_reading.temp_f,
          humidity: dht11_reading.humidity
      );
    else
      fake = rand(-10...120)
      Dht11Reading.create(
          temperature_celsius: fake,
          temperature_fahrenheit: fake,
          humidity: fake
      );
    end
  end
end

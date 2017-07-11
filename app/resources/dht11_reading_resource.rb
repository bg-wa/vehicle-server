class Dht11ReadingResource < JSONAPI::Resource
  attributes :temperature_celsius, :temperature_fahrenheit, :humidity
end

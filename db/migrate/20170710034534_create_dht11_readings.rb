class CreateDht11Readings < ActiveRecord::Migration[5.1]
  def change
    create_table :dht11_readings do |t|
      t.float :temperature_celsius
      t.float :temperature_fahrenheit
      t.float :humidity

      t.timestamps
    end
  end
end

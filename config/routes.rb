Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  get 'dashboard/index'
  get 'remote/index'

  scope 'api' do
    jsonapi_resource :dht11_readings
  end

  root('dashboard#index')
end

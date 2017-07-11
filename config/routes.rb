Rails.application.routes.draw do
  get 'dashboard/index'
  get 'remote', to: 'remote#index'

  jsonapi_resource :dht11_reading

  root('dashboard#index')
end

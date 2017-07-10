Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  get 'remote/index'

  get 'dashboard/index'

  root('dashboard#index')
end

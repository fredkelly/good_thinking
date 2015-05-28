Rails.application.routes.draw do
  resources :users, only: [:create], default: { format: 'json' }
  resources :thoughts, defaults: { format: 'json' }
end

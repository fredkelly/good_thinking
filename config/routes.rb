Rails.application.routes.draw do
  resources :thoughts, defaults: { format: 'json' }
end

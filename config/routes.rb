Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'

  # token/endpoint
  get '/:token/:endpoint', to: 'application#show'
end

Rails.application.routes.draw do
  root 'static_gsds#home'
  get '/about', to: 'static_gsds#about'

  resources :gsds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

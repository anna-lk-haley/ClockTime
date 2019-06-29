Rails.application.routes.draw do
  get 'timelog/index'

  resources :get_times
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'timelog#index'
  
end

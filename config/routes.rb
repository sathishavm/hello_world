Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :hello_world
  get '/failure', to: 'hello_world#failure'

  root to: "hello_world#index"
end

Rails.application.routes.draw do
  resources :donates
  root 'pages#index'
  get '/project/:id', to: 'pages#show_project'
  get '/donate/:id', to: 'donates#new'
  devise_for :users
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

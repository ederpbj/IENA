Rails.application.routes.draw do

  get '/' => 'dashs#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users
  resources :pontos
  resources :atividades
  resources :membros
  resources :tipos
  resources :lider_treinamentos
  resources :celulas

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

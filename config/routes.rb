Rails.application.routes.draw do

  root to: 'homes#top'
  devise_for :admins,skip:[:registrations, :passwords],controllers:{ sessions: "admins/sessions" }
  devise_for :users,skip:[:passwords],controllers:{ registrations: "users/registrations", sessions: 'users/sessions' }
  devise_for :trainers,skip:[:passwords],controllers:{ registrations: "trainers/registrations", sessions: 'trainers/sessions' }

  #トレーナーのレンタル詳細ページ
  resources :rental_trainers, only: [:show]

  resources :trainers, only: [:index, :show, :edit, :update] do
    resource :bookmarks, only: [:create, :destroy]
  end

  resources :posts, only: [:index,:show,:edit,:create,:destroy,:update]
  post 'trainers/:id' => 'posts#show'

  get '/map_request', to: 'maps#map', as: 'map_request'

  resources :users, only: [:show, :edit, :update]

  namespace :admins do
    resources :trainers, only: [:index, :show, :edit, :update]
    resources :users, only: [:index, :show, :edit, :update]
  end
  
  resources :maps
  
  resources :messages, only: [:create]
  resources :rooms, only: [:create, :index, :show]
  
  get 'latlngsearch/:lat/:lng' => 'posts#search', constraints: { lat: /\d+\.\d+/, lng: /\d+\.\d+/ }


end

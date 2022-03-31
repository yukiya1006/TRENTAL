Rails.application.routes.draw do

  root to: 'homes#top'
  devise_for :admins,skip:[:registrations, :passwords],controllers:{ sessions: "admins/sessions" }
  devise_for :users,skip:[:passwords],controllers:{ registrations: "users/registrations", sessions: 'users/sessions' }
  devise_for :trainers,skip:[:passwords],controllers:{ registrations: "trainers/registrations", sessions: 'trainers/sessions' }
  
  resources :trainers, only: [:index, :show, :edit, :update] do
    resource :bookmarks, only: [:create, :destroy]
  end
  
  resources :users, only: [:show, :edit, :update]
  
  namespace :admins do
    resources :trainers, only: [:index, :show, :edit, :update]
    resources :users, only: [:index, :show, :edit, :update]
  end
  
  

end

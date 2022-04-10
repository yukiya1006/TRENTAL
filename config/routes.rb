Rails.application.routes.draw do

  # get 'relationships/followings'
  # get 'relationships/followers'


  root to: 'homes#top'
  devise_for :admins,skip:[:registrations, :passwords],controllers:{ sessions: "admins/sessions" }
  devise_for :users,skip:[:passwords],controllers:{ registrations: "users/registrations", sessions: 'users/sessions' }
  devise_for :trainers,skip:[:passwords],controllers:{ registrations: "trainers/registrations", sessions: 'trainers/sessions' }

  resources :chats, only: [:index, :show, :create]
  resources :trainer_chats, only: [:index, :show]

  # ユーザー側
  resources :users, only: [:show, :edit, :update] do
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'likings' => 'like_relationships#likings', as: 'likings'
    get 'badings' => 'bad_relationships#badings', as: 'badings'
  end

  # トレーナー側
  resources :trainers, only: [:index, :show, :edit, :update] do

    post 'followers' => 'relationships#create', as: 'follow'
    delete 'followers' => 'relationships#destroy', as: 'unfollow'
    post 'likers' => 'like_relationships#create', as: 'like'
    delete 'likers' => 'like_relationships#destroy', as: 'dislike'
    post 'baders' => 'bad_relationships#create', as: 'make_bad'
    delete 'baders' => 'bad_relationships#destroy', as: 'was_bad'
  end
  
  resources :photos

  resources :maps
  # マップの検索クエリ
  get '/map_request', to: 'maps#map', as: 'map_request'

  get 'search' => 'trainers#search'
  get 'tags/:tag', to: 'maps#index', as: :tag




  # namespace :admins do
  #   resources :trainers, only: [:index, :show, :edit, :update]
  #   resources :users, only: [:index, :show, :edit, :update]
  # end





  # get 'latlngsearch/:lat/:lng' => 'posts#search', constraints: { lat: /\d+\.\d+/, lng: /\d+\.\d+/ }




end

Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui' 
  root to: "pages#front"
  get "/home", to: "videos#index"  
  resources :videos, only:[:index, :show] do
    collection do
      post "search"
    end
    resources :reviews, only:[:create]
  end
  #get '/videos/:id', to: "videos#show", as: "video"
  resources :queue_items, only: [:create, :destroy]
  post 'update_queue', to: 'queue_items#update_queue'

  get '/my_queue', to: "queue_items#index"
  get '/categories/:id', to: "categories#show", as: "category"
  get '/register', to: "users#new"
  get '/sign_in', to: "sessions#new"
  post '/login', to: "sessions#login"
  get '/sign_out', to: "sessions#destroy"
  resources :users, only:[:create]



end

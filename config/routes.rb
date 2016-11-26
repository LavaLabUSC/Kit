Rails.application.routes.draw do
  root 'static_pages#home'
  get 'discover' => 'dashboard#discover'

  # Videos
  get 'video/:id' => 'videos#show'

  # Products
  get 'product/:id' => 'products#show'

  # Creators
  get 'creator/:slug' => 'creators#show'

  # Search
  post 'search' => 'search#search'
  get 'search/:tag' => 'search#results'
  get 'search/:tag/videos' => 'search#videos'
  get 'search/:tag/creators' => 'search#creators'
  get 'search/:tag/products' => 'search#products'
  
  # User routes
  get 'signup' => 'users#new'
  get 'profile' => 'users#show'
  resource :users

  # Session routes
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'
end

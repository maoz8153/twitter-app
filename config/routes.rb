Twitter::Application.routes.draw do


  root to: 'homes#show' , via: :get
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resource :search, only: [:show]

  resources :users, only: [:index, :new, :create, :show] do
      post 'follow' => 'following_relations#create'
      delete 'follow' => 'following_relations#destroy'
  end

  resources :twitts, only: [:show]
  resources :text_twitts, only: [:create]
  resources :photo_twitts, only: [:create]



end

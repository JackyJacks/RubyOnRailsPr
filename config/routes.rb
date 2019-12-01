Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'
  get 'contacts' => 'pages#contacts', as: 'contacts'

  resources :posts do
    resources :comments
  end
  resource :posts do
    resource :comments
  end

    #get '/posts/:id', to: 'posts#show', as: 'post'

end

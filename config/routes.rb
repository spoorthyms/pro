Rails.application.routes.draw do
  
    
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
#get 'pages/home'
#get 'pages/about'
  devise_for :users
  resources :posts do
  	resources :comments
  end
  root "posts#index"
  get '/about', to: 'pages#about'
  get '/home', to: 'pages#home'

   resources :movies do
    collection do
      get 'search'
    end
         resources :reviews, except: [:show, :index]
  end
  
end

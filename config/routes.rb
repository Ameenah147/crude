Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index".
  resources :restaurants do
    collection do
      get :top
    end
  end
  resources :restaurants do
    member do
      get :chef
    end
  end
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end

  resources :reviews, only: [:show, :edit, :update, :destroy]
end

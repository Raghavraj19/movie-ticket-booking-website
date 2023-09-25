Rails.application.routes.draw do
  # get 'bookngs/index'
  # get 'bookngs/new'
  # get 'bookngs/create'
  # get 'bookngs/show'
  # get '/movie/index', to: "movie#index"
  # get "/movie/show/:id", to: "movie#show"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :customers
  # devise_for :users
  # root "home#index"
  resources :movies
  resources :screens
  resources :bookngs
  resources :payments
  resources :tickets
  # get "/movie", to: "movie/index"
  

  # devise_scope :customer do
  #   # root to: "devise/sessions#new" 
  #   root to: "devise/sessions#new"
  # end

  # devise_scope :customer do
  # root :to => "devise/sessions#new"
  # end

  devise_for :customers

  devise_scope :customer do
    #root 'devise/sessions#new'
    unauthenticated do
      root to: 'devise/sessions#new', as: 'unauthenticated_root'
    end

    authenticated do
     root to: 'movies#index'
    end
  end
  #root :to => redirect("/customers/sign_in")
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

end

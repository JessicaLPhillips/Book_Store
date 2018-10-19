Rails.application.routes.draw do
  devise_for :users
 root to: "home#index"
  resources :books, only: :show do
    resources :sales, only: [:new, :create]
  end

  resources :authors

  get "/books", to: "books#index" 

  get "/sales", to: "sales#index"

  get "/styleguide", to: "styleguide#index"

end


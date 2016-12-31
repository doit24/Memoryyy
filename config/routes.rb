Rails.application.routes.draw do
  devise_for :users
  get  'boards/search' => 'boards#search'
  resources :users, only: :show
  resources :boards do
    resources :comments, only: [:new, :create ]
    collection do
        get 'search'
    end
  end
    root 'boards#index'
end

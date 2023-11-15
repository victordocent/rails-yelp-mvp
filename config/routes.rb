Rails.application.routes.draw do
  get 'reviews/new'
  get "up" => "rails/health#show", as: :rails_health_check

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end

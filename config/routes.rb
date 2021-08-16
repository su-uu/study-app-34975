Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :questions do
    resources :answers, only: [:index, :create, :show, :destroy]
  end
end

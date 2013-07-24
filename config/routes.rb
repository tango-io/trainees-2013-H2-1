Star::Application.routes.draw do
  devise_for :users
  resources :dashboard , :projects, :admins, :categories, :users

  root to: "home#index"
end

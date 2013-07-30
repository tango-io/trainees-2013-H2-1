Star::Application.routes.draw do
  devise_for :users
  
  namespace :admin do
    resources :projects, only: [:index] do
      member do
        put :approve

      end
    end

    resources :users, only: [:index] do
      member do
        put :convert_admin
      end
    end
  end

  resources :projects
  resources :categories, only: [:new]
  resources :users
  resources :reports

  root to: "home#index"
end

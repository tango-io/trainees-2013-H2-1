Star::Application.routes.draw do
  get 'admins/users', to: 'admins#users_list'
  post 'admins/users', to: 'admins#users_admin'
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

  resources :dashboard, only: [:index]
  resources :projects
  resources :categories, only: [:new]
  resources :users
  resources :reports

  root to: "home#index"
end

Star::Application.routes.draw do
  get 'admins/users', to: 'admins#users_list'
  post 'admins/users', to: 'admins#users_admin'
  devise_for :users
  
  resources :dashboard , :projects, :admins, :categories , :users, :reports

  root to: "home#index"
end

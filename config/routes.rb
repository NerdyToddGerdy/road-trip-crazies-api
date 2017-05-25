Rails.application.routes.draw do
  resources :join_tables
  resources :builds
  resources :users do
     collection do
        post 'login', to: 'users#login'
     end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :appointments
  resources :users, only: [:create] do
    collection do
      post 'login'
    end
  end

  resources :pets, only: [:create, :index]
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'signup', to: 'users#create'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      get '/test', to: 'users#test'
      post '/login', to: 'auth#create'
      post '/users', to: 'users#create'
      get '/me', to: 'users#me'
    end
  end
end

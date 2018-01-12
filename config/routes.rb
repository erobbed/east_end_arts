Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # resources :users
      post '/login', to: 'auth#create'
      post '/users', to: 'users#create'
      post '/group', to: 'groups#setGroup'
      post '/groups', to: 'groups#create'
      get '/me', to: 'users#me'
      post '/events', to: 'events#create'
    end
  end
end

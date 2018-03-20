Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # resources :users
      post '/login', to: 'auth#create'
      post '/admin', to: 'users#admin'
      post '/users', to: 'users#create'
      get '/users', to: 'users#index'
      post '/group', to: 'groups#setGroup'
      post '/groups', to: 'groups#create'
      get '/me', to: 'users#me'
      post '/events', to: 'events#create'
      patch '/events/:id', to: 'events#edit'
      get '/events', to: 'events#index'
      post '/notices', to: 'notices#create'
      get '/notices', to: 'notices#latest'
    end
  end
end

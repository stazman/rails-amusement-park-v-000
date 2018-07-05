Rails.application.routes.draw do
    root "static_pages#home"
    get "/signin", to: "sessions#new"
    post "/sessions/create", to: "sessions#create"
    delete "/signout", to: "sessions#destroy"
    post "/rides/new", to: "rides#new"
    resources :attractions
    resources :users
end



# Rails.application.routes.draw do

#     scope format: false do

#         # scope '/admin' do
#         #     resources :stats, only: [:index]
#         # end
        
#         root 'static#index'

#         get '/signin', to: 'session#new'
#         post '/signin', to: 'session#create'
#         get '/logout', to: 'session#destroy'
#         delete '/logout', to: 'session#destroy'
#         resources :users

#     end

#     # get '/users/new', to: 'users#new'
#     # post '/users', to: 'users#create'
#     # get '/users/:id', to: 'users#show'
#     #order of routes matters, :id comes before new

    
#     # get 'attractions', 'attractions#index'
#     # get 'attractions', 'attractions#new'
#     # post 'attractions', 'attractions#create'
#     # get 'attractions/:id', 'attractions#show'

# end

Rails.application.routes.draw do
    root 'static#index'

    get '/signin', to: 'session#new'
    post '/signin', to: 'session#create'

    resources :users, only: [:new, :create, :show, :edit, :update]


    # get '/users/new', to: 'users#new'
    # post '/users', to: 'users#create'
    # get '/users/:id', to: 'users#show'
    #order of routes matters, :id comes before new

    
    # get 'attractions', 'attractions#index'
    # get 'attractions', 'attractions#new'
    # post 'attractions', 'attractions#create'
    # get 'attractions/:id', 'attractions#show'

end

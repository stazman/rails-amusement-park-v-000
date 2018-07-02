Rails.application.routes.draw do
    root 'static#index'

    get '/users/new', to: 'users#new'
    post '/users', to: 'users#create'
    get '/users/:id', to: 'users#show'
    #order of routes matters, :id comes before new

    
    # get 'attractions', 'attractions#index'
    # get 'attractions', 'attractions#new'
    # post 'attractions', 'attractions#create'
    # get 'attractions/:id', 'attractions#show'

end

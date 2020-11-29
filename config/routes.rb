Rails.application.routes.draw do

  
  devise_for :users
<<<<<<< HEAD
  #get 'producers/producers'
  #get 'welcome/index'
  
  resources :producers
=begin
  get "/producers" index
  post "/producers" create
  delete "/producers/:id" destroy
  get "/producers/:id" show
  get "/producers/new" new 
  get "/producers/:id/edit" edit
  path "/producers/:id" update
  put "/producers/:id" update
=end
=======
  
  get 'welcome/index'
  get 'welcome/contacto'
  get 'welcome/vivero'
  get 'registrations/new'
  get '/producers', to: 'producers#index'
  get '/producers/new', to: 'producers#new'
  post '/producers', to: 'producers#create'
  get '/producer/:id', to: 'producers#show', as: 'producer'
  get '/producers/:id/edit', to: 'producers#edit', as: 'edit_producer'
  patch '/producer/:id', to: 'producers#update'
  put '/producer/:id', to: 'producers#update'
  delete '/producer/:id', to: 'producers#delete'
  #resource :producers
>>>>>>> 268e7057e0f39626786f6f3aa40ea92286e03cc0

  root :to => 'welcome#index'  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

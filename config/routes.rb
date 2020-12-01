Rails.application.routes.draw do

  
  devise_for :users
  
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
  get '/nurseries', to: 'nurseries#index'
  get '/nurseries/new', to: 'nurseries#new'
  post '/nurseries', to: 'nurseries#create'
  get '/nurserie/:id', to: 'nurseries#show', as: 'nurserie'
  get '/nurseries/:id/edit', to: 'nurseries#edit', as: 'edit_nurserie'
  patch '/nurserie/:id', to: 'nurseries#update'
  put '/nurserie/:id', to: 'nurseries#update'
  delete '/nurserie/:id', to: 'nurseries#delete'
  #resource :producers
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

  root :to => 'welcome#index'  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

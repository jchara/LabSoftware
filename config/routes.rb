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

  get '/labors', to: 'labors#index'
  get '/labors/new', to: 'labors#new'
  post '/labors', to: 'labors#create'
  get '/labor/:id', to: 'labors#show', as: 'labor'
  get '/labors/:id/edit', to: 'labors#edit', as: 'edit_labor'
  patch '/labor/:id', to: 'labors#update'
  put '/labor/:id', to: 'labors#update'
  delete '/labor/:id', to: 'labors#delete'


  get '/control_products', to: 'control_products#index'
  get '/control_products/new', to: 'control_products#new'
  post '/control_products', to: 'control_products#create'
  get '/control_product/:id', to: 'control_products#show', as: 'control_product'
  get '/control_products/:id/edit', to: 'control_products#edit', as: 'edit_control_product'
  patch '/control_product/:id', to: 'control_products#update'
  put '/control_product/:id', to: 'control_products#update'
  delete '/control_product/:id', to: 'control_products#delete'

  root :to => 'welcome#index'  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  
  devise_for :users
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

  root :to => 'welcome#index'  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

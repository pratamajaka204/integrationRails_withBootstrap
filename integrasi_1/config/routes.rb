Rails.application.routes.draw do
  # get 'articles/index'

  get 'articles/edit'
  
  post 'articles/new'

  # ROUTE STANDARD

  # get 'articles/edit', to: "articles#edit", as: :articles
  # ------------------------------------------------------

  # RESTFULL ROUTE
  root :to => "articles#index" 
  resources :articles
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

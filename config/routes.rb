Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  #routes for articles
  get 'articles/new', to:'articles#new'
  get "articles/:id", to:"articles#show"
  get 'articles/:id/edit', to:'articles#edit'
  
  post'articles', to:'articles#create' #for render post get
  patch'articles/:id', to:'articles#update', as: :article
end

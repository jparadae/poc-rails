Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'articles/new', to:"articles#new"
  post'articles', to:"articles#create"
end

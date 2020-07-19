Rails.application.routes.draw do
  get 'post/:id', to: 'posts#show'
  post 'posts/create'
  root to: 'tops#index'
  get 'new', to: 'posts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

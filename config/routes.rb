Rails.application.routes.draw do
  root to: 'tops#index'
  resources :posts, :only =>[:new,:create,:show]
  # get 'post/:id', to: 'posts#show'
  # post 'posts/create'
  # get 'new', to: 'posts#new'
  get 'sort/latest', to:'posts#latest'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

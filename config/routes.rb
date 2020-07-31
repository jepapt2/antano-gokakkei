Rails.application.routes.draw do
  root to: 'tops#index',　to:'posts#index'
  resources :posts, :only =>[:new,:create,:show]
  # get 'post/:id', to: 'posts#show'
  # post 'posts/create'
  # get 'new', to: 'posts#new'
  get 'sort/latest', to:'posts#latest'
  get 'sort/view', to:'posts#view'
  get 'tags', to:'posts#tags'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

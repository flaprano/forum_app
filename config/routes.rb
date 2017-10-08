Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts, only: [:index, :show, :create] do
    post 'comment'
    post 'reply'
  end

  get 'posts/:id/new_reply', to: 'posts#new_reply'
  post 'posts/:id/reply', to: 'posts#reply'
end

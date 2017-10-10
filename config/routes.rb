Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts, only: %i[index show create] do
    post 'comment'
    post 'reply'
  end
  
  resources :profanity_words, only: %i[index new create]

  get 'posts/:id/new_reply', to: 'posts#new_reply'
  post 'posts/:id/reply', to: 'posts#reply'
end

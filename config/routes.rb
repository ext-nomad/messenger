Rails.application.routes.draw do
  root 'home#index'

  get 'login', to: 'sessions#new'
  get 'history', to: 'home#history'
  get 'clear_history', to: 'home#clear_history'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end

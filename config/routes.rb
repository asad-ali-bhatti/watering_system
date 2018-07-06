Rails.application.routes.draw do
  post 'home/command'
  post 'home/notify'
  get 'home/logs'
  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

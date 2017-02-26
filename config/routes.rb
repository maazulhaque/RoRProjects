Rails.application.routes.draw do
  get 'test/page1'

  get 'messaging/homepage'
  root 'messaging#homepage'
  resources :fire
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'test/page1'

  get 'messaging/homepage'
  root 'messaging#homepage'
  resources :fire

  namespace :api, :defaults => {:format => :json} do
    post 'sendmessage', to: "sendmessage#send"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

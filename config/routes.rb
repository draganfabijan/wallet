Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "transactions#transfer"
  get '/transfer',   to: 'transactions#transfer'
  resources :transactions, only: [:create, :index]
end
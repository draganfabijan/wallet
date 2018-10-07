Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "transactions#new"
  get '/transfer',   to: 'transactions#transfer'
  resources :transactions, only: [:new, :create, :index]
end

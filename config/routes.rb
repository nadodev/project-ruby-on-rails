Rails.application.routes.draw do
  resources :tickets


  get '/novo-ticket', to: 'tickets#new', as: 'novo_ticket'
  root "tickets#index"
end

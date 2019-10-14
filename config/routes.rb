Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/help',    to: 'pages#help'
  get '/contact', to: 'pages#contact'
  get '/about',   to: 'pages#about'

end

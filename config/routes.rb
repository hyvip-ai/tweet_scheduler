# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get "about", to:"about#index", as:"about"
  get "/", to:"main#index", as:"home"
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get "/", to:"main#index", as:"home"

  get "about", to:"about#index", as:"about"
  
  get "/register", to:"register#index", as:"register"
  post "/register", to:"register#create"

  get "/login", to:"login#index",as:"login"
  post "/login", to:"login#create"

  delete "/logout", to:"logout#destroy", as:"logout"
end

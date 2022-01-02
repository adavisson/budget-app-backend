Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "main#index"

  get "/", to: "main#index"

  get "/users", to: "user#index"
  get "/users/:id", to: "user#show"
  post "/users", to: "user#create"
end

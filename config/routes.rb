Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "main#index"

  get "/", to: "main#index"

  # Authentication
  post "/login", to: "authentication#login"
  get "/logout", to: "authentication#logout"

  # User routes
  get "/users/:id", to: "user#show"
  post "/users", to: "user#create"

  # Budget routes
  get "/budgets/:id", to: "budget#show"
  post "/budgets/", to: "budget#create"

  # Bill routes
  get "/bills/:id", to: "bill#show"
  post "/bills", to: "bill#create"

  # Category routes
  get "/categories/:id", to: "category#show"
  post "/categories", to: "category#create"
end

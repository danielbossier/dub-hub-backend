Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/display" => "teams#display"
  get "/teams" => "teams#index"
  post "/teams" => "teams#create"
  get "/teams/:id" => "teams#show"
  patch "/teams/:id" => "teams#update"
  delete "/teams/:id" => "teams#destroy"

  get "/groups" => "groups#index"
  post "/groups" => "groups#create"
  get "/groups/:id" => "groups#show"
  patch "/groups/:id" => "groups#update"
  delete "/groups/:id" => "groups#destroy"

  get "/leagues" => "leagues#index"
  post "/leagues" => "leagues#create"
  get "/leagues/:id" => "leagues#show"
  patch "/leagues/:id" => "leagues#update"
  delete "/leagues/:id" => "leagues#destroy"
end

Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/users/:id" => "users#show"

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

  get "/group_users" => "group_users#index"
  post "/group_users" => "group_users#create"
  get "/group_users/:id" => "group_users#show"
  patch "/group_users/:id" => "group_users#update"
  delete "/group_users/:id" => "group_users#destroy"

  get "/team_users" => "team_users#index"
  post "/team_users" => "team_users#create"
  get "/team_users/:id" => "team_users#show"
  patch "/team_users/:id" => "team_users#update"
  delete "/team_users/:id" => "team_users#destroy"
end

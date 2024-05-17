Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :books, :patrons

  # 127.0.0.1/books
  # Example routes created using resources directive
  # get "resources", to: "resources#index"
  # get "resources/new", to: "resources#new"
  # post "resources", to: "resources#create"
  # get "resources/:id", to: "resources#show"
  # get "resources/:id/edit", to: "resources#edit"
  # patch "resources/:id/", to: "resources#update"
  # delete "resources/:id/", to "resources#destroy" 

end

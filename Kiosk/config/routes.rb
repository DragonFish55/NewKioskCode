Rails.application.routes.draw do
  resources :health_histories

  get '/mainapp/:id', to: "kioskpages#mainapp"
  get '/mainapp', to: "kioskpages#mainapp"
  
  get '/signup', to: "kioskpages#signup"
  get "/signin", to: "kioskpages#signin"

  get '/login', to: "kioskqueries#login"
  get '/login', to: "kioskqueries#logout"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

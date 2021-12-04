Rails.application.routes.draw do
  resources :health_histories

  get '/userdetails', to: "kioskpages#userdetails"
  get '/userconsent', to: "kioskpages#userconsent"
  get '/userinsurance', to: "kioskpages#userinsurance"
  get '/userhealth', to: "kioskpages#userdetails"
  get '/userreview', to: "kioskpages#userreview"
  get '/mainapp', to: "kioskpages#mainapp"
  
  get '/signup', to: "kioskpages#signup"
  get "/signin", to: "kioskpages#signin"

  get '/login', to: "kioskqueries#login"
  get '/login', to: "kioskqueries#logout"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

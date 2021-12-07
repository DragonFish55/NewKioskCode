Rails.application.routes.draw do
  resources :demographics
  resources :incase_emerges
  resources :insurances
  resources :users
  resources :health_histories

  get '/', to: "users#signin"
  get '/mainapp/:id', to: "kioskpages#mainapp"
  get '/mainapp', to: "kioskpages#mainapp"

  get "/Intake/:id/personalDetails", to: "users#get_personaldetails"
  get "/Intake/:patientid/insuranceDetails", to: "insurances#get_insurancedetails"
  get "/Intake/:patientid/demographicDetails", to: "demographics#get_demographicdetails"
  get "/Intake/:patientid/bluebuttonDetails", to: "demographics#get_bluebuttondetails"

  put "/Intake/:patientid/personalDetails", to: "users#up_personaldetails"
  put "/Intake/:patientid/insuranceDetails", to: "insurances#up_insurancedetails"
  put "/Intake/:patientid/demographicDetails", to: "demographics#up_demographicdetails"
  put "/Intake/:patientid/bluebuttonDetails", to: "demographics#up_bluebuttondetails"
  
  delete "Intake/:patientid", to: "users#del_patient"
  get "user/:userid/usertype", to: "users#get_user"
  get "user/create", to: "users#createuser"
  put "user/:userid/update", to: "users#update_user" 
  delete "user/:userid/delete", to: "users#delete_user" 

  get '/signup', to: "users#signup"
  get "/signin", to: "users#signin"

  post '/login', to: "users#login"
  delete '/login', to: "users#logout"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

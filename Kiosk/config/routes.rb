Rails.application.routes.draw do
  resources :demographics
  resources :incase_emerges
  resources :insurances
  resources :users
  resources :health_histories

  get '/', to: "kioskpages#signin"
  get '/mainapp/:id', to: "kioskpages#mainapp"
  get '/mainapp', to: "kioskpages#mainapp"

  get "/Intake/:patientid/personalDetails", to: "intake#get_personaldetails"
  get "/Intake/:patientid/insuranceDetails", to: "intake#get_insurancedetails"
  get "/Intake/:patientid/demographicDetails", to: "intake#get_demographicdetails"
  get "/Intake/:patientid/bluebuttonDetails", to: "intake#get_bluebuttondetails"
  put "/Intake/:patientid/personalDetails", to: "intake#up_personaldetails"
  put "/Intake/:patientid/insuranceDetails", to: "intake#up_insurancedetails"
  put "/Intake/:patientid/demographicDetails", to: "intake#up_demographicdetails"
  put "/Intake/:patientid/bluebuttonDetails", to: "intake#up_bluebuttondetails"
  delete "Intake/:patientid", to: "intake#del_patient"

  get "user/:userid/usertype", to: "intake#get_user"
  post "user/create", to: "intake#createuser"
  put "user/:userid/update", to: "intake#update_user" 
  delete "user/:userid/delete", to: "intake#delete_user" 

  get '/signup', to: "intake#signup"
  get "/signin", to: "intake#signin"

  post '/login', to: "intake#login"
  delete '/login', to: "intake#logout"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Sweet paths
  get '/sweets', to: "sweets#index", as: "sweets"
  get '/sweets/:id', to: "sweets#show", as: "sweet"

  #Vendor paths
  get '/vendors/:id', to: "vendors#show", as: "vendor"
  get '/vendors', to: "vendors#index", as: "vendors"
  
  #Vendor sweet paths
  get '/vendorsweets', to: "vendorsweets#index", as: "vendorsweets"
  get '/vendorsweets/new', to: "vendorsweets#new", as: "new_vendorsweet"
  post '/vendorsweets', to: "vendorsweets#create"
end

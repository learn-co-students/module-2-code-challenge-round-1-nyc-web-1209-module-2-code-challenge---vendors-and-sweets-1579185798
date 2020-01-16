Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Sweets Routes
  get '/sweets', to: "sweets#index", as: "sweets"
  get '/sweets/:id', to: "sweets#show", as: "sweet"

  #Vendor Routes
  get '/vendors', to: "vendors#index", as: "vendors"
  get '/vendors/:id', to: "vendors#show", as: "vendor"


  #VendorSweets Routes
  get '/vendorsweets/new', to: "vendor_sweets#new", as: "vender_sweets_path"
  post '/vendorsweets', to: "vendor_sweets#create"

end

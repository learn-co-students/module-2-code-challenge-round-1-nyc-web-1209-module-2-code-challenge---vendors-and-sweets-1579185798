Rails.application.routes.draw do
  get 'vendor_sweets/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Sweet Routes
  get '/sweets', to: "sweets#index", as: "sweets"
  get "/sweets/:id", to: "sweets#show", as: "sweet"
  
  
  #Vendor Routes
  get '/vendors', to: "vendors#index", as: "vendors"
  get "/vendors/:id", to: "vendors#show", as: "vendor"


  #VendorSweet Routes
  get '/vendor_sweets', to: "vendor_sweets#index", as: "vendorsweets"
  get "/vendor_sweets/:id", to: "vendor_sweets#show", as: "vendorsweet"
end



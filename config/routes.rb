Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'vendor_sweets/index'

  # get 'vendor_sweets/show'

  get '/sweets', to: "sweets#index", as: "sweets"
  get 'sweets/:id', to: "sweets#show", as: "sweet"

  get '/vendors', to: "vendors#index", as: "vendors"
  get 'vendors/:id', to: "vendors#show", as: "vendor"

  get 'vendorsweets', to: "vendor_sweets#index", as: "vendor_sweets"
  get 'vendorsweets/new', to: "vendor_sweets#new", as: "new_vendor_sweet"
  get 'vendorsweets/:id', to: "vendor_sweets#show", as: "vendor_sweet"
  post 'vendorsweets', to: "vendor_sweets#create", as: "create_vendor_sweet"

end

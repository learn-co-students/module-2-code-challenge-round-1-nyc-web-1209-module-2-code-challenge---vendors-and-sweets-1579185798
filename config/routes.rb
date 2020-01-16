Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sweets', to: "sweets#index", as: "sweets"
  get '/sweets/:id', to: "sweets#show", as: "sweet"

  get '/vendors', to: "vendors#index", as: "vendors"
  get '/vendors/:id', to: "vendors#show", as: "vendor"

  resources :vendor_sweets, only: [:new, :create] # Didn't feel like writing out both of these routes manually, but I did add the show routes for Vendors and Sweets.

end

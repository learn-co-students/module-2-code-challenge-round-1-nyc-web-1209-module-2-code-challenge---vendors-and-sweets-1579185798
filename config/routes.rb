Rails.application.routes.draw do
  get '/sweets', to: "sweets#index", as: "sweets"
  get '/vendors', to: "vendors#index", as: "vendors"
  get '/vendor_sweets', to: "vendor_sweets#index", as: "vendor_sweets"
  get '/vendor_sweets/new', to: "vendor_sweets#new", as: "new_vendor_sweet"
  get '/vendor_sweets/:id', to: "vendor_sweets#show", as: "vendor_sweet"
  get 'vendors/:id', to: "vendors#show", as: "vendor"
  get '/sweets/:id', to: "sweets#show", as: "sweet"
  post '/vendor_sweets', to: "vendor_sweets#create"
end

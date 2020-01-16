Rails.application.routes.draw do
  
  resources :vendor_sweets, only: [:create, :new]

  resources :sweets, only: [:show, :index]
  
  resources :vendors, only: [:show, :index]

end

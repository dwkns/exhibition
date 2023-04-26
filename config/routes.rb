Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get '/coupon', to: 'coupons#index'

  put "/coupon", to: "coupons#update_coupon", as: 'update_coupon'

  # Defines the root path route ("/")
  root "pages#home"
end

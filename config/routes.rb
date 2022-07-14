Rails.application.routes.draw do
  # devise_for :customers
  # devise_for :admins
  
  namespace :admin do
    get 'homes/top'
  end

  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

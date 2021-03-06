Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_for :admin,skip: [:registrations, :passwords], controllers: {
    sesstions: 'admin/sesstions'
  }

  namespace :admin do
    get '/' => 'homes#top'
    get '/items' => 'items#index'
    resources :items

  end

  namespace :public do

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


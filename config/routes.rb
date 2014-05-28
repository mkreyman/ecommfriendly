Ecommfriendly::Application.routes.draw do
  resources :sales

  resources :products

  root :to => "home#index"
  devise_for :users, :controllers => {registrations: "registrations",
                                      omniauth_callbacks: "omniauth_callbacks"}
  resources :users

  authenticated :user, lambda {|u| u.role == 'admin' } do
    mount Resque::Server.new, :at => "/resque"
  end
  get '/resque', to: "home#index"

end
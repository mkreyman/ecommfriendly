Ecommfriendly::Application.routes.draw do

  get '/buy/:permalink', to: 'transactions#new', as: :show_buy
  post '/buy/:permalink', to: 'transactions#create', as: :buy
  get '/pickup/:guid', to: 'transactions#pickup', as: :pickup
  get '/download/:guid', to: 'transactions#download', as: :download

  match '/iframe/:permalink' => 'transactions#iframe', via: :get, as: :buy_iframe

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
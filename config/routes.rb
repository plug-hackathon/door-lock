Rails.application.routes.draw do
  get "knock" => "webhooks#knock"
  get "authentication/users" => "authentication#users"

  resources :encrypted_messages do
    member do
      post :decrypt
      get  :encrypt
    end
  end

  root to: "authentication#index"
end

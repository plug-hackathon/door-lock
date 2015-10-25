Rails.application.routes.draw do
  get "knock" => "webhooks#knock"

  root to: "authentication#index"
  resources :encrypted_messages do
    member do
      post :decrypt
    end
  end
end

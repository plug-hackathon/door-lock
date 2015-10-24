Rails.application.routes.draw do
  root to: "authentication#index"
  resources :encrypted_messages do
    member do
      post :decrypt
    end
  end
end

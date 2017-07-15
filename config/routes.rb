Rails.application.routes.draw do
  get  "sessions/sign_up_form"
  post "sessions/sign_up"
  get  "sessions/sign_out"

  get  "sessions/sign_in_form"
  post "sessions/sign_in"

  resources :user
  resources :songs
  resources :albums

  root "home#index"
end

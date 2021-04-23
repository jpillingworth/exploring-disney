Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "characters", to: "characters#index"
  get "characters/new", to: "characters#new
  get "characters/:id", to: "characters#show", as: :character
  post "characters", to: "characters#create"
  get "characters/:id/edit", to: "characters#edit"
  patch "characters/:id", to: "characters#update"
  delete "characters/:id", to: "characters#destroy"
end

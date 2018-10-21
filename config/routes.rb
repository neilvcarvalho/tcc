Rails.application.routes.draw do

  resource :poll, only: [:new, :show, :create]
  root to: "polls#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

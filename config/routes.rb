Rails.application.routes.draw do
  devise_for :users
  get 'partners/index'
  root to: "partners#index"
end

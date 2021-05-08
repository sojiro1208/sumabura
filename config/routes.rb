Rails.application.routes.draw do
  get 'partners/index'
  root to: "partners#index"
end

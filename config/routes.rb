Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  get "filter_auditoria", to: "static_pages#filter_auditoria"
  get "get_schedules", to: "static_pages#get_schedules"
end

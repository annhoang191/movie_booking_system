Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  get "filter_auditoria", to: "static_pages#filter_auditoria"
  get "get_schedules", to: "static_pages#get_schedules"
  post "get_schedule_id_from_client", to: "booking_seats#get_schedule_id_from_client"
  post "get_auditorium_id_from_client", to: "static_pages#get_auditorium_id_from_client"
  resources :booking_seats
  resources :movies
end

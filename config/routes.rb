Rails.application.routes.draw do
  mount Cinema::Movie => '/api'
  mount Cinema::Reservation => '/api'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

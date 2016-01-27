Rails.application.routes.draw do
  root 'home#url_crunch'
  resources :urls
end

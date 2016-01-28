Rails.application.routes.draw do
  root 'home#url_crunch'
  resources :urls, except: [:index]
  get '/all-urls' => "home#url_index", as: :url_index
end

Rails.application.routes.draw do
  root 'home#url_crunch'
  resources :urls, except: [:index, :create]
  get '/all-urls' => "home#url_index", as: :url_index
  post '/url-cruncher' => "home#crunch_it", as: :url_crunch
end

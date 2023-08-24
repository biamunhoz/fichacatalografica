Rails.application.routes.draw do

  resources :fichas
  root 'fichas#new'

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Mike's Routes
  get '/courses/:id', to: 'courses#iframe'
  post '/assets', to: 'assets#new'
  patch '/assets/:id', to: 'assets#update'
  
  # Chris's Routes
  get '/courses/:id/admin', to: 'courses#admin'
  get '/courses', to: 'courses#index'
end

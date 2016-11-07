Rails.application.routes.draw do
  get 'monsters/index'

  root 'monsters#index'   # add this line

  get '/monsters/create' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

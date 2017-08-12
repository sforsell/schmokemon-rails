Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/:id' => 'users#show'
  post '/users/:user_id/pokemons' => 'users#create'
  delete 'users/:user_id/pokemons/:id' => 'users#destroy'

end

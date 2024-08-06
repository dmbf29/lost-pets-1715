Rails.application.routes.draw do
  # http_verb '/path', to: 'controller#action', as: :prefix
  # CRUD
  # Read all
  get '/pets', to: 'pets#index', as: :pets

  # Create
  # a page for the form
  get '/pets/new', to: 'pets#new', as: :new_pet
  post '/pets', to: 'pets#create'

  # Read one
  get '/pets/:id', to: 'pets#show', as: :pet

  # Update
  # a page for the form
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch '/pets/:id', to: 'pets#update'

  # Destroy
  delete '/pets/:id', to: 'pets#destroy'
end

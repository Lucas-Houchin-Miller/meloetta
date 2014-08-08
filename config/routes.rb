Rails.application.routes.draw do
  # Routes for the Note resource:
  # CREATE
  get '/new_note' => 'notes#new'
  get '/create_note' => 'notes#create'

  # READ
  get '/notes' => 'notes#index'
  get '/notes/:id' => 'notes#show'

  # UPDATE
  get '/notes/:id/edit' => 'notes#edit'
  get '/notes/:id/update' => 'notes#update'

  # DELETE
  get '/notes/:id/destroy' => 'notes#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  # Routes for the Picture resource:
  # CREATE
  get '/new_picture' => 'pictures#new'
  get '/create_picture' => 'pictures#create'

  # READ
  get '/pictures' => 'pictures#index'
  get '/pictures/:id' => 'pictures#show'

  # UPDATE
  get '/pictures/:id/edit' => 'pictures#edit'
  get '/pictures/:id/update' => 'pictures#update'

  # DELETE
  get '/pictures/:id/destroy' => 'pictures#destroy'
  #------------------------------
  get '/about_us' => 'notes#about_us'
  #get "/greet" => "pages#home"  
  #get "/sign_in" => "pages#sign_in"
  #get "/sign_out" => "pages#sign_out"
  get "/sessions/new" =>"sessions#new"
  get "/sessions/create" => "sessions#create"
  get "/sessions/destroy" => "sessions#destroy"
  get "/share" => "notes#share"
  root to: "notes#home"
end

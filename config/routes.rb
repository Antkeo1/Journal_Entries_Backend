# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  get '/Journal_Entries' => 'Journal_Entries#index'
  get 'Journal_Entries/:id' => 'Journal_Entries#show'
  post 'Journal_Entries' => 'Journal_Entries#create'
  patch 'Journal_Entries/:id' => 'Journal_Entries#update'
  delete '/Journal_Entries/:id' => 'Journal_Entries#destroy'
end

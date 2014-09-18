Rails.application.routes.draw do
  

  # get 'words_templates/index'
  root 'words#index'
  resources :words, except: [:edit, :new]
  resources :words_templates

  
end


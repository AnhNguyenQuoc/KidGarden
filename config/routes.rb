Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'
  devise_scope do
    get '/signup' => 'devise/registrantions#new'
    get '/edit' => 'devise/registrantions#edit'
    get '/login'  => 'devise/sessions#create'
    get '/logout' => 'devise/sessions#destroy'
    get '/forget_password' => 'devise/passwords#new'
    get '/new_password' => 'devise/passwords#edit'
  end
end

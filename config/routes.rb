Rails.application.routes.draw do
  root 'welcome#index'
  resources :companies
  resources :jobs

  namespace :admin do
    get '/', to: 'index#index'
    get '/company', to: 'company#index'
    resources :jobs
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

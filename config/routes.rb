Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api do
     namespace :v1 do
       resources :donates
     end
   end
   root "updates#index"
   resources :updates
   get '/all', to: 'updates#all'
end

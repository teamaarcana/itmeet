Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api do
     namespace :v1 do
       resources :donates
     end
   end
end

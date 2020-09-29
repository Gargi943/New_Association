Rails.application.routes.draw do
  get 'appointments/index'
  get 'physicians/index'
  get 'patients/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :suppliers do
     resources :accounts
   end

   resources :authors do
   	 resources :books
   end

   resources :patients
   resources :physicians
   resources :appointments
end

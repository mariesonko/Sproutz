Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :families
    namespace :api do
      namespace :v1 do
        resources :children, :events, :families, :parents, :playdates

      end
    end
end

Rails.application.routes.draw do
  root to: "suppliers#index"

  resources :suppliers do 
    collection do
      get :search 
    end
  end    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

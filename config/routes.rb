Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do 
    match '/scrape', to: 'products#scrape', via: :post, on: :collection
  end

  root to: 'products#index'
end

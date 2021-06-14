Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :forecast, only: :index
      
    end
  end

  get "/api/v1/book-search" to: "book#search"
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :locations, :only => [:index, :show] do
        resources :places,  :only => [:index, :create]
      end
    end
  end
end

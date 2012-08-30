Stm::Application.routes.draw do

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  scope :module => :web do
    root :to => "stories#index"

    resources :users, :sessions

    resources :stories do
      resources :comments
    end

  end



end

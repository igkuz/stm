Stm::Application.routes.draw do

  get "sessions/new"

  scope :module => :web do
    root :to => "welcome#index"

    resources :users

  end



end

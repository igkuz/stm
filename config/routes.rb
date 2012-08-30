Stm::Application.routes.draw do

  scope :module => :web do
    root :to => "welcome#index"

    resources :users
    resource :session,  :only => [:new, :destroy]

    resources :stories do
      resources :comments
    end

  end



end

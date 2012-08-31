Stm::Application.routes.draw do

  scope :module => :web do
    root :to => "welcome#index"

    resources :users
    resource :session, :only => [:new, :create, :destroy]

    resources :stories do
      scope :module => :stories do
	      resources :comments
      end
    end

  end

end

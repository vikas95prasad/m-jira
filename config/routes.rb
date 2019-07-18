Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }

    resources :users, only: [:index, :show, :update] do
		  collection do
		    get :generate_report
		  end
		end
    resources :projects
    resources :todos
  end
end

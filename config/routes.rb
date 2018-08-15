Rails.application.routes.draw do

  get 'welcome/index'
resources :trabajadores_lists do
	resources :trabajadores_items
  	resources :tlc_lists
  	resources :tlcp_rueba_lists
  	resources :todo_lists
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "trabajadores_lists#index"

end

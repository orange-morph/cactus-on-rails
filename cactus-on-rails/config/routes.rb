Rails.application.routes.draw do
  get 'welcome/index'

  resources :plants do
  	resources :plant_images do
  		collection do 
  			get 'edit'
  			post 'add'
  			delete 'destroy'
  		end
  	end
  end

  resource :plant_images

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

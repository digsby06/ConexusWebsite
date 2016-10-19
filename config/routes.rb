Rails.application.routes.draw do
  root 'welcome#index'

	namespace :casein do
		resources :paperclips
		resources :features
		resources :blogs
	end

  resources :contacts, only: [:new, :create]
  resources :blogs
  resources :features

  get '/experience' => 'projects#projects'

  # ATT Featured Projects
  get '/projects/att/fwchicago15' => 'projects#fwchicago15'
  get '/projects/att/digitallife14' => 'projects#digitallife14'
  get '/projects/att/holiday15' => 'projects#holiday15'
  get '/projects/att/digitallife16' => 'projects#digitallife16'
  get '/projects/att/vangogh' => 'projects#vangogh'



  get '/about' => 'pages#about'
  get '/trends' => 'blogs#index'
  get '/contact' => 'contacts#new'

  get '/capabilities/experiential-content' => 'capabilities#experientialcontent'
  get '/capabilities/social-interaction' => 'capabilities#socialinteraction'
  get '/capabilities/immersive-experience-design' => 'capabilities#immersiveexperiencedesign'
  get '/capabilities/control-system-programming' => 'capabilities#controlsystemprogramming'




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

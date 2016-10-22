Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

# Navigation Bar Routes
  root 'welcome#index'
  get '/about' => 'pages#about'
  get '/trends' => 'blogs#index'
  get '/contact' => 'contacts#new'

# Capabilites aka 'Our Services' => Found in second nav on homepage and About page
  get '/capabilities/experiential-content' => 'capabilities#experientialcontent'
  get '/capabilities/social-interaction' => 'capabilities#socialinteraction'
  get '/capabilities/immersive-experience-design' => 'capabilities#immersiveexperiencedesign'
  get '/capabilities/control-system-programming' => 'capabilities#controlsystemprogramming'

# Casein Admin Backend
	namespace :casein do
		resources :paperclips
		resources :features
		resources :blogs
	end

resources :blogs

# Experience Page - where projects can be found
get '/experience' => 'projects#projects'

# ATT Featured Projects
get '/projects/att/fwchicago15' => 'projects#fwchicago15'
get '/projects/att/digitallife14' => 'projects#digitallife14'
get '/projects/att/holiday15' => 'projects#holiday15'
get '/projects/att/digitallife16' => 'projects#digitallife16'
get '/projects/att/vangogh' => 'projects#vangogh'

# Mailer
  resources :contacts, only: [:new, :create]
end

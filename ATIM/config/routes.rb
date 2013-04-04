ATIM::Application.routes.draw do

  resources :meeting_notes


  resources :commitments


  resources :meetings


  resources :deliverables

  resources :students

  get  'sources/new'         => 'sources#new'
  post 'sources/new'         => 'sources#create'
  get  'sources/:id'         => 'sources#search'
  get  'sources/:id/edit'    => 'sources#analysis'
  put  'sources/update'      => 'sources#update'

  resources :sources

  match 'commitments/:id'      => 'commitments#search'
  match 'commitments/:id/edit' => 'commitments#close'

  resources :commitments

  get "commitments/create"
  get "commitments/edit"
  get "commitments/close"


  resources :recommendations

  resources :theses

  get "index/index"

  resources :teachers

  get "home/login"

  get "home/sign"

  root  to: 'home#login'


  match '/commitmentsSearch', to: 'commitments#search', :as => 'commitmentsSearch'
  match '/meetingsStudent', to: 'index#meetings', :as => 'meetingsStudent'
  match '/indexStudent', to: 'index#indexUsuario', :as => 'indexUsuario'
  match '/newResource', to: 'index#createResource', :as => 'createResource'
  match '/updateResource', to: 'index#updateResource', :as => 'updateResource'
  match '/entregas', to: 'index#indexDeliverable', :as => 'indexDeliverable'
  match '/stateOfArt', to: 'index#resourcesIndex', :as => 'resourcesIndex'
  match '/commitmentsStudent', to: 'index#commitments', :as => 'commitmentsStudent'
  match '/signup', to: 'teachers#new', :as => 'signup'
  match '/index', to: 'index#index', :as => 'index'

   match '/ranking', to: 'index#comenzarTesis', :as=> 'comenzar'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

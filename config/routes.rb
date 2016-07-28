Rails.application.routes.draw do

  root 'webpage#index'

  get 'signup', to: 'users#new'
  get 'adminpanel', to: 'adminpanel#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'pages/:title', to: 'pages#showbytitle'
  namespace :admin do
    root 'base#index'
    get 'login', to: 'base#login'
    post 'login', to: 'base#create'
    delete 'logout', to: 'base#destroy'
    get 'forbidden', to: 'base#forbidden'
    get 'uploads', to: 'uploads#index'
    resources :pages
    resources :articles
    resources :images, :only => [:index, :new, :create, :destroy]
    resources :items, :only => [:index, :new, :create, :destroy]
  end
  resources :articles , :only => [:index ,:show] do 
    resources :comments
  end

  resources :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

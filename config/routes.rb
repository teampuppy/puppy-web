Rails.application.routes.draw do
  

  root 'todo#index'
  get 'todo' => 'todo#index'

  get 'user' => 'user#get_active'
  put 'user' => 'user#update'
  post 'user' => 'user#create'
  delete 'user' => 'user#delete'
  post 'auth' => 'user#authcheck'

  get 'user/likes' => 'user#likes'

  get 'pets' => 'pet#get_all'
  get 'pet/:id' => 'pet#get'

  post 'like' => 'like#add'

  post 'denuncia' => 'report#add'

  get 'auth' => 'todo#index'
  get 'wanteds' => 'todo#index'
  get 'denuncias' => 'todo#index'
  
  put "user" => 'todo#index'

  get 'web' => 'web_home#display'
  get 'web/login' => 'web_login#display'
  get 'web/pet/:id' => 'web_item#display'
  get 'web/pets' => 'web_lista#display'
  get 'web/sobre' => 'web_static#sobre'
  get 'web/contato' => 'web_static#contato'
  get 'web/protetor' => 'web_static#protetor'

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

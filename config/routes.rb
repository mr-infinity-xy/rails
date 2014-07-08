Rails.application.routes.draw do
  get 'forms/form'

  get 'comments/new'

  get 'comments/create'

  #get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'articles#index'
   
   resources :articles do  # param: :title   param title is used to send title='' instead of id='' which is the default. Though it doesn't change RHS of hash , which is still valid id. It can be changed by to_param method in article
    resources :comments, only: [:create]
   end
   resources :users
   resources :comments
   get 'find_multiple' => 'articles#find_multiple'
   post 'search' => 'articles#search'
   get 'login' => 'users#login'
   post 'login_process' => 'users#login_process'
   get 'form' => 'forms#form' 
   post 'process_form' => 'forms#process_form' 
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

Rails.application.routes.draw do
 get 'products/name'
  #end
# get 'products/testfor'

  resources :products do
    resources :patients
  end

  delete 'delete_products', to: 'products#delete_products', as: :delete_products
#resources :products do
 #resources :patients
#end

get '/animals', to: 'animals#index', as: 'animals'
  get '/animals/new_animal', to: 'animals#new_animal', as: 'new_animal'
  get '/animals/:id', to: 'animals#testshow', as: 'animal'
  post '/animals', to: 'animals#create_animal', as: 'create_animal_animal'
  get '/animals/:id/testedit', to: 'animals#testedit', as: 'testedit_animal'
  patch '/animals/:id', to: 'animals#testupdate', as: 'testupdate_animal'
  delete '/animals/:id', to: 'animals#testdestroy', as: 'testdestroy_animal'
  get 'animals/search', to: 'animals#search', as: 'search_animals'
resources :animals

  # The priority is based upon order of creation: first created -> highest priority.
#s get 'products/form'
  # See how all your routes lay out with "rake routes".
  #get 'products/new' => 'products#new'
  #
  #
  # You can have the root of your site routed with "root"
  root 'products#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
#  resources :products

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
